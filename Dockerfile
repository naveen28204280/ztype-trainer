FROM node:20-slim

LABEL maintainer="naveensrinvas282@gmail.com" description="Since nishtha wanted it"

COPY . .

WORKDIR /.

RUN npm cache clean --force
RUN npm install -g http-server

ENTRYPOINT [ "http-server" ]