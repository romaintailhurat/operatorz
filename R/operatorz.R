#' Concat two vectors.
#'
#' @param left A vector
#' @param right A vector
#'
#' @return The pasted vector
#' @export
#'
#' @examples
#' "yo" %++% "da"
`%++%` <- function(left, right) {
  paste0(left, right)
}


#' An OR operator for selecting one non NULL value from two.
#'
#' @param x A vector
#' @param y A vector
#'
#' @return The selected vector
#' @export
#'
#' @examples
#' x <- NULL %||% 42
`%||%` <- function(x, y){
  if (is.null(x)) y else x
}

#' Not in operator.
#'
#' Basically, it is the opposite of %in%
#'
#' @param needle A vector of things to check
#' @param haystack A vector of elements against which the check will be run
#'
#' @return A boolean vector
#' @export
#'
#' @examples
#' c(5, 42) %ni% 1:10
`%ni%` <- function(needle, haystack) {
  Negate(`%in%`)(needle, haystack)
}


#' Binary operator to sample from a distribution.
#'
#' It's simply extracting without replacement.
#'
#' @param pool A vector from where to sample
#' @param size The size of the sample
#'
#' @return A vector with sampled values
#' @export
#'
#' @examples
#' 1:10 %..% 2
`%..%` <- function(pool, size) {
  sample(pool, size)
}

