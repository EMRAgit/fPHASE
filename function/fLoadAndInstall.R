#-----------------------------------------------------------------------------------------------------
print("Load all required packages and dowload/install non-existent packages")
#-----------------------------------------------------------------------------------------------------
fLoadAndInstall <- function(mypkg=c("automap",
                                    "gstat",
                                   "gtools",
                                   "chron",
                                   "data.table",
                                   "doSNOW",
                                   "fields",
                                   "foreign",
                                   "geosphere",
                                   "grid",
                                   "gstat",
                                   "intamap",
                                   "parallel",
                                   "raster",
                                   "RCurl",
                                   "rgdal",
                                   "stringr",
                                   "utils",
                                   "sf")) {
  for(i in seq(along=mypkg)){
    if (!is.element(mypkg[i],installed.packages()[,1])){install.packages(mypkg[i])}
    library(mypkg[i], character.only=TRUE)
  }
}
