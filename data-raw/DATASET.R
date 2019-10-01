## code to prepare `DATASET` dataset goes here
library(fslr)
library(extrantsr)
fname = "inst/ALVIN_mask_v1.nii.gz"
img = readnii(fname)
range(img)
unique(c(img))
mm = 0.5
outfile = sub(".nii.gz", paste0("_", mm, "mm.nii.gz"), fname)
if (!file.exists(outfile)) {
  timg = mni_fname(mm = mm)

  result = resample_to_target(
    fname, target = timg,
    copy_origin = FALSE, interpolator = "nearestNeighbor")
  unique(c(result))

  brain = readnii(timg)
  ortho2(brain, result)

  writenii(result, outfile)

}
