# Add in citation (bioconductor.com or whatever it is.)
library(xcms)

# Starting with a single file. Will need to build into loops eventually
# Add back in file parameter for convenience but for testing it isn't needed
allPeakAreas <- function(file, mz, mz.tol, rt, rtvar)
{
  # Creates needed variables. (will need to adjust for loop! Can make mz, ... into a list and then do lapply for lists)
  mzmin <- mz - mz.tol
  mzmax <- mz + mz.tol
  rtmin <- (rt - rtvar) * 60
  rtmax <- (rt + rtvar) * 60
  
  # puts elements into a matrix so they can be fed into getPeaks() 
  mtx = matrix(c(mzmin, mzmax, rtmin, rtmax), nrow = 1, ncol = 4)
  
  # Works as long as mzXML file directory is set as working and no files have same names (before extensions)
  # creates a raw object and then gets teh peaks from the specified mz and rt ranges.
  xraw <- xcmsRaw(file)
  peaks <- getPeaks(xraw, mtx)
  
  # returns integrated peak area. 
  peaks[7]
}

### Input data goes down here. Files can be either mzML or mzXML files. Make sure each file name is unique though! 
files = c(
  "12T.mzML",
  "10F.mzML"
)

mzs <- 903.2553
mz.tols <- 0.002
rts <- 6.29
rtvars <- .1

allPeakAreas(file, mz, mz.tol, rt, rtvar)


source('Peak_area_finder.R')
