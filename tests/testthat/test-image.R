test_that("Image is correct dimension", {

  img = alvin_image()

  ###################################
  # Correct Dimensions
  ###################################
  expect_equal(dim(img), c(91, 109, 91))


})
