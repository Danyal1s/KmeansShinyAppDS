#' The function plots the k means cluster
#'
#' This function takes in the x and y values to plot along with k-means calculated
#' cluster list and returns a k-means cluster plot
#'
#'
#'
#' @param xy_data list of x and y values to plot \code{xy_data}
#' @param cluster_data list of k-means calculated cluster data \code{cluster_data}
#'
#' @return clusterPlot returns a k-means cluster plot to render
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
#'
plot_my_cluster <- function(xy_data, cluster_data) {
  plot(xy_data, col = cluster_data$cluster, pch = 20, cex = 3)
  points(cluster_data$centers, pch = 4, cex = 4, lwd = 4)
}
