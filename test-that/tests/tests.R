source("../functions/range-value.R")

x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]


#default test
context('Test for range value')

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

#my own test for y
context('OLD Test for length value of y')

test_that('length value of y should fail with the improved function', {
  y <- c(1,2,3,4,NA)
  
  expect_equal(range_value(y), 1)
  expect_legnth(range_value(y),NA_real_)
  
})


#my own test for z
context('testing range value for z')
test_that('length value of z', {
  z <- c(TRUE, FALSE, TRUE)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_equal(range_value(z), 1L)
})


#my own test for w
context('testing a failure for w')
test_that('type value of w fails', {
  w <- letters[1:5]
  expect_type(range_value(w), 'integer')
})


#using the missing_values() function
source("../functions/missing-values.R")

context('test for missing values')
test_that('missing values works as expected', {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(missing_values(y), 1)
  expect_type(missing_values(y), 'double')
  expect_gte(missing_values(y), 0)
})




#rewrote the range-value function
#new test
#my own test for y
source("../functions/range-value.R")
context('NEW Test for length value of y')

test_that('length value of y', {
  y <- c(1,2,3,4,NA)
  
  expect_equal(range_value(y), 3)
  expect_length(range_value(y),1)
  
})
