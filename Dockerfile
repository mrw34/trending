FROM node:14.13.1-alpine

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

WORKDIR /usr/src/app

COPY . .
RUN npm ci

CMD [ "npm", "start", "--silent" ]
