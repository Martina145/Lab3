

test_that("Return right value", {
expect_that(euclidean(123612, 13892347912),equals(4))
expect_that(euclidean(100, 1000),equals(100))
})

test_that("Return right error", {
  expect_that(euclidean(2,q),
              throws_error("Not numeric arguments"))
  expect_that(euclidean(q,2),
              throws_error("Not numeric arguments"))
  expect_that(euclidean(q,q),
              throws_error("Not numeric arguments"))
})
