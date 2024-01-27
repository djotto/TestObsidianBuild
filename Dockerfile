FROM node:20-slim

# Install git
RUN apt-get update && apt-get install -y git

WORKDIR /usr/src/app

# Clone the v4 branch from the official repo
RUN git clone -b v4 https://github.com/jackyzha0/quartz.git .

# Install app dependencies
RUN npm install
