#' ALVIN Mask
#'
#' @return Path to ALVIN NIfTI image
#' @param mm The resolution for the MNI template to correspond to.
#' @export
#'
#' @examples
#' alvin_mask()
#' alvin_mask(mm = 1)
#' alvin_mask(mm = 0.5)
#' alvin_image()
#' testthat::expect_equal(
#' dim(alvin_image(1, read_data = FALSE)),
#' c(182L, 218L, 182L))
#' testthat::expect_equal(
#' dim(alvin_image(0.5, read_data = FALSE)),
#' c(364L, 436L, 364L))
alvin_mask = function(mm = c("2", "1","0.5")) {
  mm = as.character(mm)
  mm = match.arg(mm)
  app = switch(
    mm,
    "1" = "_1mm",
    "0.5" = "_0.5mm",
    "2" = ""
  )
  system.file(paste0("ALVIN_mask_v1", app, ".nii.gz"), package = "alvin")
}

#' @rdname alvin_mask
#' @export
#' @importFrom neurobase readnii
#' @param ... additional arguments to pass to \code{\link{readnii}}
alvin_image = function(mm = c("2", "1","0.5"), ...) {
  x = neurobase::readnii(alvin_mask(mm = mm), ...)
  return(x)
}
