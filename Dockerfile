FROM node:alpine

MAINTAINER David Chen <david@davidchen.blog>

RUN apk update
RUN apk add git
RUN git clone https://github.com/david510c/mstsc.js.git
RUN cd /mstsc.js && npm install

EXPOSE 8080
CMD ["node", "server.js"]
