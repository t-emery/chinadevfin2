## code to prepare `DATASET` dataset goes here

# Excel file downloaded from https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0
# Define filepath
file_path <- here::here("data-raw", "AidDatasGlobalChineseDevelopmentFinanceDataset_v2.0.xlsx")

# import full dataset
gcdf2_dataset <- readxl::read_excel(file_path, sheet = "Global_CDF2.0") |>
  # make column names snake_case
  janitor::clean_names() |>
  # coerce date column into correct data type
  dplyr::mutate(dplyr::across(.cols = tidyselect::contains("date_mm"), .fns = as.Date))

# save data object
usethis::use_data(gcdf2_dataset, overwrite = TRUE, compress = "xz")

##### Make the Data Dictionary

# Define a function to get the column classes
get_column_classes <- function(.data) {
  .data |>
    # use map_df to get a dataframe with the column name and its class
    purrr::map_df(class) |>
    # it gives two rows with the same data
    head(1) |>
    # pivot it longer so that they are both columns
    tidyr::pivot_longer(dplyr::everything(), names_to = "column_name", values_to = "column_class")
}

# Get the dataset column data types
col_data_types <- gcdf2_dataset |>
  get_column_classes()


# import data dictionary
gcdf2_data_dictionary <- readxl::read_excel(file_path,
                                           sheet = "Definitions",
                                           "A4:B74") |>
  # make column names snake_case
  janitor::clean_names() |>
  # make a column with the field name in snake case, like the column names
  dplyr::mutate(column_name = janitor::make_clean_names(field_name)) |>
  # join the column data type tibble
  dplyr::left_join(col_data_types, by = dplyr::join_by(column_name)) |>
  # adjust the column orders
  dplyr::select(column_name, column_class, field_name, description)


# save data object
usethis::use_data(gcdf2_data_dictionary, overwrite = TRUE, compress = "xz")

############################ Create Standardized Countrynames using `countrycode`

gcdf2_standardized_countrynames <- gcdf2_dataset |>
  # select the column with country names
  dplyr::select(recipient) |>
  #filter for unique values
  unique() |>
  # use countrycode::country_name to get standardized countrynames
  dplyr::mutate(country_name = countrycode::countryname(recipient),
                # All NAs are regions (I checked), so fill in the recipient name (of the region)
                country_name = dplyr::if_else(is.na(country_name), true = recipient, false = country_name),
                # get iso3cs
                iso3c = countrycode::countryname(recipient, destination = "iso3c"),
                # create a column to filter by country or regional projects
                country_or_regional = dplyr::if_else(is.na(iso3c), true = "regional", false = "country"))

# save data object
usethis::use_data(gcdf2_standardized_countrynames, overwrite = TRUE, compress = "xz")
