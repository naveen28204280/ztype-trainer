FROM node:20-slim

LABEL maintainer="naveensrinvas282@gmail.com" description="Since nishtha wanted it"

WORKDIR /.

COPY . .

RUN npm cache clean --force
RUN npm install -g http-server

EXPOSE 8080

ENTRYPOINT ["http-server", ".", "-p", "8080", "-a", "0.0.0.0"]