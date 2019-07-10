test_that("Concat operators is cool", {
  expect_equal(
    "yo" %++% "da",
    "yoda"
  )
})

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
