FROM node:16-alpine

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

WORKDIR /usr/src/app

COPY . .
RUN npm ci

CMD [ "npm", "start", "--silent" ]
