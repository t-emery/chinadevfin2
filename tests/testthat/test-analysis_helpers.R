
## Test get_gcdf2_dataset()

# test 1: check if the function returns a tibble with 13,427 rows and 73 columns when run with no input
test_that("get_gcdf2_dataset with no input returns tibble with 13,427 observations and 73 columns", {
  result <- get_gcdf2_dataset()
  expect_s3_class(result, "tbl_df")
  expect_equal(nrow(result), 13427)
  expect_equal(ncol(result), 73)
})

# test 2: check if the function returns a tibble with 13,427 rows and 70 columns when run with standardized_countrynames = FALSE
test_that("get_gcdf2_dataset with standardized_countrynames = FALSE returns tibble with 12,427 observations and 70 columns", {
  result <- get_gcdf2_dataset(standardized_countrynames = FALSE)
  expect_s3_class(result, "tbl_df")
  expect_equal(nrow(result), 13427)
  expect_equal(ncol(result), 70)
})
