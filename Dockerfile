FROM node:latest

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "yarn", "start" ]