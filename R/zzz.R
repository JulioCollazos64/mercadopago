.onLoad <- function(libname, pkgname) {
  reticulate::py_require("mercadopago")
}
