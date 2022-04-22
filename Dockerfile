from alpine:latest
RUN apk add --no-cache nodejs npm

WORKDIR /main
COPY package.json /main
RUN npm install

COPY . /main

EXPOSE 3000
CMD ["npm","start"]

