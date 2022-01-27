FROM node:17

WORKDIR /usr/src/app
ADD . /usr/src/app

RUN npm install

EXPOSE 8083

CMD ["npm", "start"]