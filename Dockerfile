# Use the plumber Dockerfile as reference
# https://www.rplumber.io/docs/hosting.html
FROM trestletech/plumber

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy local code to the container image.
COPY . .

EXPOSE 8080

# Run the web service on container startup.
CMD [ "server.R"]
