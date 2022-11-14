FROM alpine:latest

ENV DISCORD_TOKEN=""

RUN apk update && apk add npm nodejs ffmpeg

WORKDIR /app

ADD . /app/
 
RUN npm install .

CMD ["node", "."]
