FROM node
COPY . .
COPY package*.json ./
WORKDIR /usr/src/nodeapp
RUN npm install
EXPOSE 3000
CMD npm start