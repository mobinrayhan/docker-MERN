ARG NODE_VERSION=23-alpine
FROM node:${NODE_VERSION}

WORKDIR /frontend

COPY ./package.json .

RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]