#' Concat two vectors.
#'
#' @param left A vector
#' @param right A vector
#'
#' @return The pasted vector
#' @export
#'
#' @examples
`%++%` <- function(left, right) {
  paste0(left, right)
}


#' An OR operator for selecting one true value from two.
#'
#' @param x
#' @param y
#'
#' @return
#' @export
#'
#' @examples
#' NULL %||% 42
`%||%` <- function(x, y){
  if (is.null(x)) y else x
}

#' Not in operator.
#'
#' @param needle
#' @param haystack
#'
#' @return
#' @export
#'
#' @examples
`%ni%` <- function(needle, haystack) {
  Negate(`%in%`)
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

