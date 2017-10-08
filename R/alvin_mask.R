#' ALVIN Mask
#'
#' @return Path to ALVIN NIfTI image
#' @export
#'
#' @examples
#' alvin_mask()
alvin_mask = function() {
  system.file("ALVIN_mask_v1.nii.gz", package = "alvin")
}

#' @rdname alvin_mask
#' @export
#' @importFrom neurobase readnii
#' @param ... additional arguments to pass to \code{\link{readnii}}
alvin_image = function(...) {
  x = neurobase::readnii(alvin_mask(), ...)
  return(x)
}
