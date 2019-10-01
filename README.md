
[![Travis build
status](https://travis-ci.org/muschellij2/alvin.svg?branch=master)](https://travis-ci.org/muschellij2/alvin)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/alvin?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/alvin)
[![Coverage
status](https://coveralls.io/repos/github/muschellij2/alvin/badge.svg?branch=master)](https://coveralls.io/r/muschellij2/alvin?branch=master)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# alvin Package:

The goal of `alvin` is to provide automatic lateral ventricle
delineation (’ALVIN’) atlas. Provides the atlas and MATLAB m file.

## Installation

You can install `alvin` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/alvin")
```

``` r
library(MNITemplate)
library(neurobase)
#> Loading required package: oro.nifti
#> oro.nifti 0.10.1
#> Registered S3 method overwritten by 'R.oo':
#>   method        from       
#>   throw.default R.methodsS3
brain = MNITemplate::getMNIPath(what = "Brain", res = "2mm")
brain = neurobase::readnii(brain)
alvin = alvin::alvin_image(mm = 2) > 0
ortho2(brain, alvin)
```

![](man/figures/README-ex-1.png)<!-- -->
