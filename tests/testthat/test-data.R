context("test-data-ukbabynames")

test_that("ukbabynames nrow matches docs", {
  expect_equal(550587, nrow(ukbabynames))
})

test_that("ukbabynames years don't go below 1974", {
  old_years <- c(1974:2020)
  new_years <- as.numeric(names(table(ukbabynames$year[ukbabynames$year <= 2020])))
  expect_equal(old_years, new_years)
})

test_that("ukbabynames counts up to 2020 match", {
  old_counts <- c(3137,  3176,  3245,  3271,  3417,  3508,  3471,  3606,  3537,  3535,  3638,  3751,  3819,  3871,  4045, 3986, 4195,  4583,  4564, 4558,  4575, 4611, 13410, 14361, 14340, 14353, 14750, 15003, 15539, 16520, 17384, 18204, 19076, 20249, 21355, 21462, 21905, 22192, 22729, 22465, 22311, 22430, 22629, 22637, 22344)
  new_counts <- as.numeric(table(ukbabynames$year[ukbabynames$year <= 2018]))
  expect_equal(old_counts, new_counts)
})


test_that("nibabynames nrow matches docs", {
  expect_equal(20500, nrow(nibabynames))
})

test_that("nibabynames years don't go below 1997", {
  old_years <- c(1997:2018)
  new_years <- as.numeric(names(table(nibabynames$year[nibabynames$year <= 2018])))
  expect_equal(old_years, new_years)
})

test_that("nibabynames counts up to 2018 match", {
  old_counts <- c(796, 774, 753, 765, 763, 745, 787, 852, 861, 911, 978, 995, 998, 1048, 1016, 1069, 1068, 1053, 1049, 1073, 1074, 1072)
  new_counts <- as.numeric(table(nibabynames$year[nibabynames$year <= 2018]))
  expect_equal(old_counts, new_counts)
})


test_that("scotbabynames nrow matches docs", {
  expect_equal(248420, nrow(scotbabynames))
})

test_that("scotbabynames years don't go below 1974", {
  old_years <- c(1974:2020)
  new_years <- as.numeric(names(table(scotbabynames$year[scotbabynames$year <= 2020])))
  expect_equal(old_years, new_years)
})

test_that("scotbabynames counts up to 2020 match", {
  old_counts <- c(3137, 3176, 3245, 3271, 3417, 3508, 3471, 3606, 3537, 3535, 3638, 3751, 3819, 3871, 4045, 3986, 4195, 4583, 4564, 4558, 4575, 4611, 4739, 4833, 4765, 4714, 4900, 4955, 5195, 5463, 5728, 6121, 6360, 6770, 7313, 7337, 7436, 7518, 7737, 7805, 7786, 7833, 7795, 7884, 7799, 7813, 7722)
  new_counts <- as.numeric(table(scotbabynames$year[scotbabynames$year <= 2020]))
  expect_equal(old_counts, new_counts)
})



test_that("ewbabynames nrow matches docs", {
  expect_equal(281667, nrow(ewbabynames))
})

test_that("ewbabynames years match version 0.1.1", {
  old_years <- c(1996:2015)
  new_years <- as.numeric(names(table(ewbabynames$year[ewbabynames$year <= 2015])))
  expect_equal(old_years, new_years)
})

test_that("ewbabynames counts match version 0.1.1", {
  old_counts <- c(8671, 8732, 8801, 8886, 9085, 9285, 9599, 10270, 10804, 11222, 11805, 12501, 13047, 13127, 13421, 13658, 13923, 13592, 13472, 13548)
  new_counts <- as.numeric(table(ewbabynames$year[ewbabynames$year <= 2015]))
  expect_equal(old_counts, new_counts)
})

test_that("ewbabynames years don't go below 1996", {
  old_years <- c(1996:2019)
  new_years <- as.numeric(names(table(ewbabynames$year[ewbabynames$year <= 2019])))
  expect_equal(old_years, new_years)
})

test_that("ewbabynames counts up to 2019 match.", {
  old_counts <- c(8671,  8732,  8801,  8886,  9085,  9285,  9599, 10270, 10804, 11222, 11805, 12501, 13047, 13127, 13421, 13658, 13923, 13592, 13472, 13548, 13761, 13679, 13473, 13305)
  new_counts <- as.numeric(table(ewbabynames$year[ewbabynames$year <= 2019]))
  expect_equal(old_counts, new_counts)
})
