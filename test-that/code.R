range_value <- function(x) {
  max(x) - min(x)
}

save(range_value, file='functions/range-value.R')


missing_values <- function(x) {
  sum(is.na(x))
}

save(missing_values, file='functions/missing-values.R')

