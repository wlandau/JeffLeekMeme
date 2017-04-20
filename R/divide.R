#' @title Divide like Jeff.
#' @description "If you divide a number by 0 in R, the result is Jeff Leek." - Massimiliano Figini
#' @details Seriously, dividing by zero will actually give you the string \code{"Jeff Leek"}.
#' @param x Something to be divided by \code{y}.
#' @param y Something which \code{x} will be divided by.
#' @seealso \code{\link{Arithmetic}}
#' @export
#' @examples 
#' \dontrun{
#' 
#' 1 / 0
#' # [1] "Jeff Leek"
#' 
#' }
"/" = function(x, y){
  if(y == 0){
    "Jeff Leek"
  } else {
    .Primitive("/")(x, y)
  }
}
