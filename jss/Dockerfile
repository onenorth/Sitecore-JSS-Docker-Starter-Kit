FROM node:8-alpine

# Install dependencies python as a virtual native-dep for node-sass
RUN apk update && apk upgrade && apk add --no-cache --virtual rsync openssh native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python

# Install Sitecore JSS
RUN npm install -g @sitecore-jss/sitecore-jss-cli

# Specify working directory in docker container
WORKDIR /usr/src/app

# Make ssh dir
RUN mkdir /root/.ssh/

# Install node dependencies
COPY package*.json ./
RUN npm install

CMD ["jss", "start"]