FROM alpine:latest 

RUN apt-get -qy update && apt-get -qy upgrade && apt-get -qy install tini bash git

ADD plugin.sh /
RUN chmod a+x /plugin.sh

ENTRYPOINT ["/usr/bin/tini", "--", "/plugin.sh"]