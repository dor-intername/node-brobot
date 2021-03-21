FROM node

RUN mkdir -p /usr/src/nodeapp/node_modules && chown -R node:node /usr/src/nodeapp
WORKDIR /usr/src/nodeapp
COPY . .
COPY package*.json ./
RUN npm install
EXPOSE 8080
CMD npm start
