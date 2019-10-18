# Cloud Run with R – Hello World

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

An example of creating serverless functions using `R`, `plumber`, `Docker` and [Cloud Run](https://cloud.google.com/run/).

Take a look at the Swagger API UI at https://cloudrun-hello-r.jinks.dev/__swagger__/

## File descriptions:

- `app.R` describes the endpoints of the server and respective request handler functions
- `server.R` sets up the server environment with plumber
- `Dockerfile` describes the setup of the docker container used to run the app
- `cloudbuild.yaml` sets up continuous deployment to Cloud Run, when commits are pushed to master
