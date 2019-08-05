# Use the plumber Dockerfile as reference
# https://github.com/trestletech/plumber/blob/master/Dockerfile
FROM rocker/geospatial

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy local code to the container image.
COPY . .

# Install any R packages
RUN install2.r \
  plumber \
  geojsonio

EXPOSE 8080

# Run the web service on container startup.
CMD [ "Rscript", "server.R"]
