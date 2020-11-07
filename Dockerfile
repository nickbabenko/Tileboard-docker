FROM node:12-alpine

RUN apk update && \
    apk add --no-cache bash git

RUN git clone https://github.com/resoai/TileBoard.git /tileboard

WORKDIR /tileboard
RUN yarn && yarn build && yarn add express

COPY server.js server.js

CMD [ "node", "server.js" ]
