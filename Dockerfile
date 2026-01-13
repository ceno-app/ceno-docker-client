ARG OUINET_VERSION=latest
FROM equalitie/ouinet:${OUINET_VERSION}

COPY ouinet-client.conf metrics-cert.pem ssl-inj-cert.pem \
     repo-templates/client/

VOLUME /var/opt/ouinet

ENTRYPOINT ["/opt/ouinet/ouinet", "client"]
