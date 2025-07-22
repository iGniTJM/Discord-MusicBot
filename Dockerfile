FROM node:18
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run deploy
RUN echo "TOKEN=${TOKEN}" && echo "CLIENTID=${CLIENTID}"
CMD [ "node", "index.js" ]
