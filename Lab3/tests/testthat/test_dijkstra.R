test_that("Returns the right values", {
  data(wiki_graph)
  expect_that(dijkstra(wiki_graph, 1),equals(c(0,7,9,20,20,11)))
  expect_that(dijkstra(wiki_graph, 3),equals(c(9,10,0,11,11,2)))
})

test_that("Returns an error", {
  data(wiki_graph)
  expect_that(dijkstra(wiki_graph, 8),
              throws_error())
  expect_that(dijkstra(wiki_graph, 0),
              throws_error())
  expect_that(dijkstra(wiki_graph$v1, 1), throws_error())
  expect_that(dijkstra(wiki_graph, q), throws_error())
  expect_that(dijkstra(q, 1), throws_error())
})



