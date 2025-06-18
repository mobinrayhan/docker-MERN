# Use a lighter base image
ARG NODE_VERSION=23-alpine
FROM node:${NODE_VERSION}

WORKDIR /backend

COPY ./package.json .

RUN npm install --omit=dev

COPY . .

EXPOSE 8080

CMD ["npm", "run", "dev"]
