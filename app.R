# app.R
library(geojsonio)
library(jsonlite)

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
  points <- c(32.45, -99.74)
  # cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
  data <- geojson_json(points)
  print(fromJSON(data))
  fromJSON(data)
}

print('app.R running')
