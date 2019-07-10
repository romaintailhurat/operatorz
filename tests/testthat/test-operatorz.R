# %++% operator
test_that("Concat operators is cool", {
  expect_equal(
    "yo" %++% "da",
    "yoda"
  )

  expect_identical(
    1:10 %++% NULL,
    as.character(1:10)
  )

  expect_length(
    letters %++% LETTERS,
    26
  )
})

# %||% op
test_that("OR operator fits its purpose", {
  expect_equal(
    NULL %||% 42,
    42
  )
})

# %ni% op
test_that("Not in operator", {
  expect_equal(
    c(1, 42) %ni% 1:10,
    c(FALSE, TRUE)
  )
})

# ‰..% op
test_that("Sample operator works the way it should", {
  pool <- 1:100

  # Normal behaviour
  expect_length(
    pool %..% 5,
    5
  )

  # Handling errors
  expect_error(
    pool %..% "five"
  )
})
