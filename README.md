# Cloud Run with R – Hello World

[![Run on Google Cloud](https://storage.googleapis.com/cloudrun/button.svg)](https://console.cloud.google.com/cloudshell/editor?shellonly=true&cloudshell_image=gcr.io/cloudrun/button&cloudshell_git_repo=https://github.com/Jinksi/cloudrun-helloworld-r.git)

An example of creating serverless functions using `R`, `plumber`, `Docker` and [Cloud Run](https://cloud.google.com/run/).

Take a look at the Swagger API UI at https://hello-r.jinks.dev/__swagger__/

## File descriptions:

- `app.R` describes the endpoints of the server and respective request handler functions
- `server.R` sets up the server environment with plumber
- `Dockerfile` describes the setup of the docker container used to run the app
- `cloudbuild.yaml` sets up continuous deployment to Cloud Run, when commits are pushed to master
