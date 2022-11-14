FROM alpine:latest

ENV DISCORD_TOKEN=""
ENV DISCORD_GUILDID=""
ENV DISCORD_GLOBAL=""

RUN apk update && apk add npm nodejs ffmpeg

WORKDIR /app

ADD . /app/
 
RUN npm install .

CMD ["node", "."]
