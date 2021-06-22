FROM redgatefoundry/spawnctl:0.27

USER root

RUN apk add --update \
    curl openssl libc6-compat bash jq \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []
