#' Main python module
#' @returns the mercadopago Python module
#' @export
#' @usage NULL
mercadopago <- NULL


.onLoad <- function(libname, pkgname) {
  reticulate::py_require("mercadopago")
  mercadopago <<- reticulate::import("mercadopago", delay_load = FALSE)
}
