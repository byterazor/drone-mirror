FROM alpine:latest 

RUN apk update && apk add --no-cache tini bash git

ADD plugin.sh /
RUN chmod a+x /plugin.sh

ENTRYPOINT ["/sbin/tini", "--", "/plugin.sh"]