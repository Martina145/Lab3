library(testthat)
library(Lab3)
setwd("/Users/Martini/Dropbox/LiU/Rprog/Lab3/Lab3/tests")

test_that("Return right value", {
expect_that(euclidian(123612, 13892347912),equals(4))
expect_that(euclidian(100, 1000),equals(100))
})

test_that("Return right error", {
  expect_that(euclidian(2,q),
              throws_error("Not numeric arguments"))
})

#test_that("Return right values", {
#  wiki_graph <-data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#               v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#               w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#  expect_that(dijkstra(wiki_graph, 1),is_identical_to(c(0,7,9,20,20,11)))
#  expect_equal(dijkstra(wiki_graph, 1),c(0,7,9,20,20,11))
#  expect_that(dijkstra(wiki_graph, 3),is_identical_to(c(9,10,0,11,11,2)))
#})

test_that("Return right error", {
  expect_that(dijkstra(wiki_graph, 8),
              throws_error())
})

source("testthat")
test_file("testthat")

test_file("/Users/Martini/Dropbox/LiU/Rprog/Lab3/Lab3/tests")

#test_check("Lab3")
