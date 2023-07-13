#' Standardized Country Names
#'
#' A tibble providing standardized country names, iso3c codes, and a column to filter between country-specific and regional projects. Country names are standardized using [countrycode::countryname()](https://vincentarelbundock.github.io/countrycode/reference/countryname.html).
#'
#' @format A tibble with 70 rows and 4 variables:
#' \describe{
#'   \item{recipient}{chr The loan recipient listed in the `recipient` column of the `gcdf2_dataset`. See the `gcdf2_data_dictionary` for more details.}
#'   \item{country_name}{chr The standardized country name provided by `countrycode::countryname()`. When the project is regional, the region listed in `recipient` is used.}
#'   \item{iso3c}{chr The [iso3c country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) This can be helpful for joining other country features. Projects where the `recipient` is a region have `NA` values.}
#'   \item{country_or_regional}{chr A column to allow filtering between country-based lending and regional lending.}
#'
#' }
"gcdf2_standardized_countrynames"
