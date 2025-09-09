FROM node:alpine

ARG APP_DIR=data-volumes
WORKDIR /app

COPY ${APP_DIR}/package*.json ./

RUN npm ci

COPY ${APP_DIR} ./

EXPOSE 80

CMD [ "npm", "start" ]

# docker build -t myapp --build-arg APP_DIR=data-volumes .