
# This is an attempt to fix notes coming up on R CMD Check about no bindings for global variables
# https://community.rstudio.com/t/how-to-solve-no-visible-binding-for-global-variable-note/28887


utils::globalVariables(c(
  "country_name",
  "country_or_regional",
  "gcdf2_dataset",
  "gcdf2_standardized_countrynames",
  "iso3c",
  "recipient"

))

# Here is the original R CMD Check
# ❯ checking R code for possible problems ... NOTE
# get_gcdf2_dataset: no visible binding for global variable
# ‘gcdf2_dataset’
# get_gcdf2_dataset: no visible binding for global variable
# ‘gcdf2_standardized_countrynames’
# get_gcdf2_dataset: no visible binding for global variable ‘recipient’
# get_gcdf2_dataset: no visible binding for global variable
# ‘country_name’
# get_gcdf2_dataset: no visible binding for global variable ‘iso3c’
# get_gcdf2_dataset: no visible binding for global variable
# ‘country_or_regional’
# Undefined global functions or variables:
#   country_name country_or_regional gcdf2_dataset
# gcdf2_standardized_countrynames iso3c recipient
