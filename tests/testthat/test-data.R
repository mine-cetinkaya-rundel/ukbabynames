context("test-data-ukbabynames")

test_that("nrow matches docs", {
  expect_equal(254889, nrow(ukbabynames))
})

test_that("years match version 0.1.1", {
  old_years <- c(1996:2015)
  new_years <- as.numeric(names(table(ukbabynames$year[ukbabynames$year <= 2015])))
  expect_equal(old_years, new_years)
})

test_that("counts match version 0.1.1", {
  old_counts <- c(8671, 8732, 8801, 8886, 9085, 9285, 9599, 10270, 10804, 11222, 11805, 12501, 13047, 13127, 13421, 13658, 13923, 13592, 13472, 13548)
  new_counts <- as.numeric(table(ukbabynames$year[ukbabynames$year <= 2015]))
  expect_equal(old_counts, new_counts)
})
