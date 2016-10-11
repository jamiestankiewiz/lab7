source("../functions/spread-measures.R")

context('Test for spread measures')

test_that("spread works as expected", {
  x <- 1:10
  expect_length(spread_measures(x), 4)
  expect_type(spread_measures(x), 'double')
})


source("../functions/center-measures.R")
context('Test for center measures')

test_that('Center measurements', {
  x<- 1:10
  expect_equal(center_measures(x), c(5.5,5.5))
  expect_length(center_measures(x), 2)
  })

source("../functions/descriptive-stats.R")
context('Test for descriptive stats')

test_that('Descriptive Stats', {
  x <- 1:10
  expect_length(descriptive_stats(x), 7)
  expect_is(descriptive_stats(x), 'numeric')

  })