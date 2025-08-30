mercadopago <- NULL
.onLoad <- function(libname, pkgname) {
  reticulate::py_require("mercadopago")
  mercadopago <<- reticulate::import("mercadopago")
}
