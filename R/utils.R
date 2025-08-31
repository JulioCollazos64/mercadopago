#' Check 'https'
#'
#' @noRd
#' @keywords internal
is_protected <- function(url) {
  startsWith(url, "https")
}
