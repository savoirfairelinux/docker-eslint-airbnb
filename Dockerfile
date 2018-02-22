FROM node:carbon-alpine

RUN mkdir /eslint
WORKDIR /eslint
COPY ./package.json /eslint/

RUN npm install

ENTRYPOINT /eslint/node_modules/eslint/bin/eslint.js /code/"$ESLINT_PATH"
