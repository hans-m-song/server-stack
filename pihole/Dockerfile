FROM pihole/pihole

COPY ./init-adlists.sh ./init-custom.sh /tmp/
RUN chmod +x /tmp/init-adlists.sh && chmod +x /tmp/init-custom.sh

ARG HOST_IP
ENV HOST_IP=${HOST_IP}
ARG HOST_NAME
ENV HOST_NAME=${HOST_NAME}
ARG PIHOLE_ALIASES
ENV PIHOLE_ALIASES=${PIHOLE_ALIASES}

RUN /tmp/init-adlists.sh && /tmp/init-custom.sh
