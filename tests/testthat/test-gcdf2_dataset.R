#library(testthat)
#library(stringr)  # For the function `str_detect`

# test 1: check if the data object is a tibble
test_that("Data object is a tibble", {
  expect_s3_class(gcdf2_dataset, "tbl_df")
})

# test 2: check if the number of rows is 13,427
test_that("Number of rows is 13,427", {
  expect_equal(nrow(gcdf2_dataset), 13427)
})

# test 3: check if the number of columns is 70
test_that("Number of columns is 70", {
  expect_equal(ncol(gcdf2_dataset), 70)
})

# test 4: check if the column names containing the word "date" are Date objects
test_that("Columns with 'date' in their names are Date objects", {
  date_cols <- stringr::str_detect(names(gcdf2_dataset), "date")
  for (col_name in names(gcdf2_dataset)[date_cols]) {
    expect_s3_class(gcdf2_dataset[[col_name]], "Date")
  }
})
