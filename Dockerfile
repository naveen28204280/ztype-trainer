FROM node:20-slim

LABEL maintainer="naveensrinvas282@gmail.com" description="Since nishtha wanted it"

COPY . .

WORKDIR /

RUN npm install http-server

ENTRYPOINT [ "http-server" ]