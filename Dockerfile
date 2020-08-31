FROM node:10.16-slim

# Install some general dependencies for stuff below and for CircleCI;
# https://circleci.com/docs/2.0/custom-images/#required-tools-for-primary-containers
RUN apt-get update && apt-get install -yq gnupg libgconf-2-4 wget git ssh --no-install-recommends

# Install dumb-init which helps with proper signal handling.
RUN apt-get install -y dumb-init
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Copy in the files
RUN git clone https://github.com/cruise-automation/webviz.git

WORKDIR /webviz

# Delete .gitignore files, so we don't accidentally pollute our image.
RUN git clean -Xf

# Build the static webviz.
RUN npm run install-ci
RUN npm run build
RUN npm run build-static-webviz

# Start the server.
EXPOSE 8080
CMD ["npm", "run", "serve-static-webviz"]