## ------------------------------------------------------------------------
library(alvin)
library(neurobase)
mask_fname = alvin_mask()
mask_fname
alvin = readnii(mask_fname)

## ------------------------------------------------------------------------
library(MNITemplate)
mni_fname = MNITemplate::getMNIPath("Brain", res = "2mm")
mni = readnii(mni_fname)
ortho2(mni, alvin)

