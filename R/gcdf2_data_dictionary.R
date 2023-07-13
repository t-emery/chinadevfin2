#' Data Dictionary for the AidData Global Chinese Development Finance 2.0 Dataset
#'
#' A data dictionary for the `gcdf2_dataset`
#'
#' @format A tibble with 70 rows and 4 variables:
#' \describe{
#'   \item{column_name}{chr The name of the column in the `gcdf2_dataset`. It is the `snake_case` version of the AidData variable name shown in `field_name`, used because it is easier to work with in R.}
#'   \item{column_class}{chr The column's data type.}
#'   \item{field_name}{chr The name of the variable from the AidData dataset.}
#'   \item{description}{chr The variable's definition.}
#'
#' }
#' @source \url{https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0}
"gcdf2_data_dictionary"
