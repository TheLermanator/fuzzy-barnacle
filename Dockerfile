FROM node:alpine

WORKDIR /app

COPY data-volumes/package*.json ./

RUN npm ci

COPY . .

EXPOSE 80

CMD [ "npm", "start" ]