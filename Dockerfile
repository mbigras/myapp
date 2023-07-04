FROM caddy:2.6.4-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY entrypoint.sh ./

ENTRYPOINT ["/app/entrypoint.sh"]
