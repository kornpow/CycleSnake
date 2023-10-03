FROM node:20-alpine3.17

ENV NODE_ENV production
ENV PATH /usr/local/bin:$PATH

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

VOLUME /usr/src/app

EXPOSE 80

CMD npm start
