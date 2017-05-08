#' Turn `enquo` into `banquo`
#'
#' @description
#'
#' Did you also see \code{rlang}'s \code{\link[rlang]{enquo}} function and instantly think of your favorite
#' Thane of Lochaber, Shakespeare's very own Banquo?
#'
#' No?
#'
#' Well, this function lets you call \code{enquo()} with \code{Banquo()} (or \code{banquo()}). That's it.
#'
#' @param expr An expression.
#' @return A formula whose right-hand side contains the quoted
#'   expression supplied as argument.
#' @seealso See \code{\link[rlang]{enquo}} for details
#' @export
#' @examples
#' yell_at_son <- function(fleance_cry) {
#'   fleance_cry <- Banquo(fleance_cry)
#'   tell_fleance <- paste0(rlang::quo_name(fleance_cry),
#'                          ", good Fleance, ",
#'                          rlang::quo_name(fleance_cry),
#'                          ", ",
#'                          rlang::quo_name(fleance_cry),
#'                          ", ",
#'                          rlang::quo_name(fleance_cry),
#'                          "!")
#'  print(paste0(toupper(substr(tell_fleance, 1, 1)),
#'               substr(tell_fleance, 2, nchar(tell_fleance))))
#' }
#' yell_at_son(fly)
#' yell_at_son(cry)
#' @name banquo
banquo <- rlang::enquo

#' @rdname banquo
#' @export
Banquo <- rlang::enquo
