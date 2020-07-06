FROM node:12.16.3-alpine

ARG RAZZLE_GRAPHQL_URL

WORKDIR /app

COPY ["package.json", "./package.json"]

RUN yarn

COPY [".", "./"]

WORKDIR /app

RUN yarn build

ENTRYPOINT [ "yarn" , "start:prod" ]