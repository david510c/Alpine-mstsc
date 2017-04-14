FROM node:alpine

MAINTAINER David Chen <david@davidchen.blog>

RUN app update
RUN app add git
RUN git clone https://github.com/david510c/mstsc.js.git
RUN cd /mstsc.js && npm install

EXPOSE 8080
CMD ["node", "server.js"]