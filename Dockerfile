FROM node:carbon-alpine

RUN mkdir /eslint
WORKDIR /eslint
COPY ./package.json /eslint/

RUN npm install

ENTRYPOINT npm run lint -- /code/"$ESLINT_PATH"
