FROM alpine

RUN apk add --no-cache --update curl \
      && rm -rf /var/cache/apk/*

ARG DDNS_CRON
ARG DDNS_USER
ARG DDNS_PASS
ARG DDNS_ENDPOINT
ARG PUBLIC_HOST_NAME
RUN echo "curl https://${DDNS_USER}:${DDNS_PASS}@${DDNS_ENDPOINT}?hostname=${PUBLIC_HOST_NAME} 2>&1" > /update.sh \
      && chmod +x /update.sh \
      && echo "${DDNS_CRON} /update.sh" > /etc/crontabs/root

CMD ["sh", "-c", "/update.sh && crond -l 2 -f"]
