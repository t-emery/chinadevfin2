# test 1: check if the data object is a tibble
test_that("Data object is a tibble", {
  expect_s3_class(gcdf2_standardized_countrynames, "tbl_df")
})

# test 2: check if the number of rows is 152
test_that("Number of rows is 152", {
  expect_equal(nrow(gcdf2_standardized_countrynames), 152)
})

# test 3: check if the number of columns is 4
test_that("Number of columns is 4", {
  expect_equal(ncol(gcdf2_standardized_countrynames), 4)
})
