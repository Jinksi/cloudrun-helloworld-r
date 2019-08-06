# Cloudrun R Hello World

An example of creating serverless functions using `R`, `plumber` and `Docker`. This project exposes a `/geojson` endpoint which generates random points in `geojson` format.

Take a look at the frontend at https://hello-r-app.jinks.dev  
Take a look at the Swagger API UI at https://hello-r.jinks.dev/__swagger__/

## Important files:

- `app.R` describes the endpoints of the server and respective functions
- `server.R` sets up the server environment with plumber
- `Dockerfile` describes the setup of the docker container used to run the app
- `cloudbuild.yaml` sets up continuous deployment to Cloud Run, when commits are pushed to master
