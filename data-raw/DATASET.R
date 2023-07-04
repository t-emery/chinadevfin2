## code to prepare `DATASET` dataset goes here

# Excel file downloaded from https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0
# Define filepath
file_path <- here::here("data-raw", "AidDatasGlobalChineseDevelopmentFinanceDataset_v2.0.xlsx")

# import full dataset
gcdf2_dataset <- readxl::read_excel(file_path, sheet = "Global_CDF2.0") |>
  # make column names snake_case
  janitor::clean_names()

# save data object
usethis::use_data(gcdf2_dataset, overwrite = TRUE)


# import data dictionary
gcdf2_data_dictionary <- readxl::read_excel(file_path,
                                           sheet = "Definitions",
                                           "A4:B74") |>
  # make column names snake_case
  janitor::clean_names()

# save data object
usethis::use_data(gcdf2_data_dictionary, overwrite = TRUE)
