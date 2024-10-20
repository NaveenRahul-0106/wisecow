FROM ubuntu:latest

RUN apt update && apt install -y fortune-mod cowsay bash dos2unix netcat-openbsd

ENV PATH="/usr/games:${PATH}"

WORKDIR /app

COPY . /app

RUN dos2unix wisecow.sh

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["/usr/bin/env","bash","./wisecow.sh"]