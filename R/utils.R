#' Check 'https'
#'
#' @noRd
#' @keywords internal
is_protected <- function(url) {
  startsWith(url, "https")
}

#' Item description columns
#'
#' @noRd
#' @keywords internal
item_columns <- function() {
  c(
    "id",
    "title",
    "description",
    "picture_url",
    "quantity",
    "unit_price"
  )
}
