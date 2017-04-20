context("JeffLeek test operators")

test_that("The divide operator returns zero when appropriate.", {
  expect_equal(1 / 0, "Jeff Leek")
  expect_equal(0 / 1, 0)
})
