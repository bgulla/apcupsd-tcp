FROM alpine
MAINTAINER Brandon <brandon@brandongulla.com>

RUN apk add --no-cache apcupsd
COPY ./conf/apcupsd.conf apcupsd.conf

EXPOSE 3551

CMD ["apcupsd","-b","-f", "apcupsd.conf"]
