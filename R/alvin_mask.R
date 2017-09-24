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
