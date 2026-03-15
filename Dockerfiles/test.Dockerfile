FROM node:20.12-alpine

# COPY files
COPY package.json package-lock.json ./

RUN npm install

COPY ./ ./

CMD [ "npm", "test" ]
