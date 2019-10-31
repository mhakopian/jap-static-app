FROM node:10
WORKDIR /home/jexia.app
COPY package*.json ./

RUN npm install http-server pm2 -g
RUN npm install
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]