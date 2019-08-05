# app.R
library(geojsonio)
library(jsonlite)

#' @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  plumber::forward()
}

#' @get /healthCheck
function(){
  list(200, "Health Check passed", Sys.getenv("hostname"))
}

#' Echo back the input
#' @param msg The message to echo
#' @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

#' Plot a histogram
#' @png
#' @get /plot
function(){
  rand <- rnorm(100)
  hist(rand)
}

#' Return the sum of two numbers
#' @param a The first number to add
#' @param b The second number to add
#' @post /sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}

#' Serve GEOJSON
#' @json
#' @get /geojson
function(){
  # Create data
  df <- data.frame(
    id = c('cam1', 'cam2', 'cam3'),
    lon = c(-28.1708, -28.1704, -28.17),
    lat = c(153.5473, 153.5478, 153.5482)
  )
  # create geojson string from dataframe
  dataString <- geojson_json(df)
  # create R dataframe from JSON string
  data <- fromJSON(dataString)
  # return data
  data
}

print('app.R running')
