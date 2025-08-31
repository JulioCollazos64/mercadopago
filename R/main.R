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

#' Build a preference
#'
#' @param back_urls List with 3 named elements `success`, `failure` and `pending`.
#' @export
build_preference <- function(
  back_urls,
  items,
  notification_url = NULL,
  external_reference = NULL,
  integrator_id = NULL
) {
  # fmt: skip
  stopifnot(
    is.list(back_urls) &&
    length(back_urls) == 3L &&
    all(names(back_urls) %in% c("success", "failure", "pending")))

  if (!all(unlist(lapply(back_urls, is_protected)))) {
    stop(
      "All `back_urls` should be domains protected by HTTPS as stated by the documentation: https://www.mercadopago.com.pe/developers/es/changelog",
      call. = FALSE
    )
  }
  back_urls <- list(back_urls = back_urls)
  back_urls

  c(
    back_urls,
    notification_url = notification_url,
    external_reference = external_reference,
    integrator_id = integrator_id
  )
}
