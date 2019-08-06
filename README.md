# Cloud Run with R – Hello World

An example of creating serverless functions using `R`, `plumber`, `Docker` and [Cloud Run](https://cloud.google.com/run/).

Take a look at the frontend at https://hello-r-app.jinks.dev. This is a static React app that consumes the `geojson` data generated by `R` serverless function/s.  

When the map is clicked, a `POST` request is made to the `geojson` endpoint with `lat` and `lon` values. The `R` function will generate 70 random points near the requested coordinates in `geojson` format. This is displayed on the frontend as a heatmap layer and can be filtered using the magnitude input.

Take a look at the Swagger API UI at https://hello-r.jinks.dev/__swagger__/

## File descriptions:

- `app.R` describes the endpoints of the server and respective request handler functions
- `server.R` sets up the server environment with plumber
- `Dockerfile` describes the setup of the docker container used to run the app
- `cloudbuild.yaml` sets up continuous deployment to Cloud Run, when commits are pushed to master
