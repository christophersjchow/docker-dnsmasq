FROM alpine:3.11

RUN apk --no-cache add dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf

ENTRYPOINT ["dnsmasq", "--keep-in-foreground", "--log-queries"]
