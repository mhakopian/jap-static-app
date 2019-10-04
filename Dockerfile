FROM node:10
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD http-server
EXPOSE 8080