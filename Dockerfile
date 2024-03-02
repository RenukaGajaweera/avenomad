FROM node:21.6.1-alpine

#create directory for node modules
RUN mkdir -p /home/node/app/node_modules

#set the working directory
WORKDIR /home/node/app

#copy package and package-lock json files
COPY package*.json ./

#set work directory ownership to node user
RUN chown -R node:node /home/node/app

#set user to node user
USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]