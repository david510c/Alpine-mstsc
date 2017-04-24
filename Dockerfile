FROM node:alpine

MAINTAINER David Chen <david@davidchen.blog>

RUN npm install --prefix mstsc -g https://github.com/citronneur/mstsc.js/tarball/master

WORKDIR /mstsc/lib/node_modules/mstsc.js

EXPOSE 9250 

CMD ["node", "server.js"]
