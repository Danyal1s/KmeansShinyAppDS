#' This function calculates the kmeans cluster
#'
#' This functions takes in the x and y variables and number of clusters
#' and returns a list containing the calculated cluster values by the kmeans
#' function.
#'
#' @param xy_data list of x and y values \code{xy_data}
#' @param cluster_value number of clusters to calculate \code{cluster_value}
#'
#' @return cluster_list() returns a list containing calculated cluster values
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
#'
my_clusters = function(xy_data, cluster_value) {

  cluster_list <- reactive({
    kmeans(xy_data, cluster_value)
  })
  return (cluster_list())
}
