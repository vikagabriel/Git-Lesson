FROM node:20.12.2

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install 

COPY  . .

EXPOSE 8080

CMD [ "node", "index.js" ]