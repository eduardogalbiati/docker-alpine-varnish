FROM alpine:latest

MAINTAINER  Eduardo Galbiati <eduardo.galbiati7@gmail.com>
ENV VARNISH_MEMORY 100M
EXPOSE 80

RUN echo "5.9.245.142 dl-cdn.alpinelinux.org" >> /etc/hosts && \
    apk update && \
    apk upgrade && \
    apk add varnish

ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/start.sh"]