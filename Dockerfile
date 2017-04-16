FROM node:7.5.0
MAINTAINER Runnable, Inc.

# Expose Ports
EXPOSE 80

# Cache NPM Install
RUN mkdir -p /app
ADD package.json /app
WORKDIR /app
RUN npm install

# Add Repository & Build
ADD . /app/

# Run Application
CMD npm start
