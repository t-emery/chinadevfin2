



#' Load the AidData Global Chinese Development Finance 2.0 Dataset
#'
#' @description
#' `get_gcdf2_dataset()` makes it easy to load [AidData's Global Chinese Development Finance Dataset, Version 2.0](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0)
#' (GCDF 2.0). By default, the function adds standardized country names that make it easier to merge it with other datasets.  The standardized country names are described in the documentation for [gcdf2_standardized_countrynames].
#' Setting `standardized_countrynames = FALSE` is equivalent to simply calling the [gcdf2_dataset] data object.  The data definitions are available in the [gcdf2_data_dictionary].
#'
#' @param standardized_countrynames set to `TRUE` by default, this argument attaches standardized country names to make it easier to join the dataset with other datasets.
#'
#' @return
#' `get_gcdf2_dataset()` returns a tibble with 13,427 observations.
#' @export
#'
#' @examples
#' # returns the GCDF 2.0 dataset, with standardized country names
#' get_gcdf2_dataset()
#'
#' # returns the GCDF 2.0 dataset as-is.
#' get_gcdf2_dataset(standardized_countrynames = FALSE)
#'
#' # the latter is equivalent to simply calling the [gcdf2_dataset] data object
#' gcdf2_dataset
get_gcdf2_dataset <- function(standardized_countrynames = TRUE) {
  if (standardized_countrynames) {
    gcdf2_dataset |>
      dplyr::left_join(gcdf2_standardized_countrynames, by = dplyr::join_by(recipient)) |>
      dplyr::select(country_name, iso3c, country_or_regional, tidyselect::everything())
  } else {
    gcdf2_dataset
  }
}
