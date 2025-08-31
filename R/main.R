#' Access the Python SDK
#'
#' @export
sdk <- function(access_token, http_client = NULL, request_options = NULL) {
  mercadopago$SDK(
    access_token,
    http_client = http_client,
    request_options = request_options
  )
}

#' Request options
#'
#' @export
request_options <- function(
  access_token = NULL,
  connection_timeout = 60L,
  custom_headers = NULL,
  corporation_id = NULL,
  integrator_id = NULL,
  platform_id = NULL,
  max_retries = 3L
) {
  mercadopago$config$RequestOptions(
    access_token = access_token,
    connection_timeout = connection_timeout,
    custom_headers = custom_headers,
    corporation_id = corporation_id,
    integrator_id = integrator_id,
    platform_id = platform_id,
    max_retries = max_retries
  )
}
