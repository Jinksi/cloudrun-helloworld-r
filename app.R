# app.R
library(geojsonio)

#' CORS allows requests made from external urls to be accepted
#' @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  plumber::forward()
}

#' Serve GEOJSON containing 3 points surrounding central coordinate
#' @param lat latitude of central coordinate
#' @param lon longitude of central coordinate
#' @post /geojson
function(lat, lon){
  lat <- as.numeric(lat)
  lon <- as.numeric(lon)
  maxRange <- 0.1

  # Create data
  n <- 70
  df <- data.frame(
    lat = runif(n, min = lat - maxRange, max = lat + maxRange),
    lon = runif(n, min = lon - maxRange, max = lon + maxRange),
    magnitude = runif(n, min = 0, max = 1)
  ) 

  # create geojson string from dataframe
  geojsonString <- geojson_json(df)

  # data to return
  geojsonString
}

print('app.R running')
