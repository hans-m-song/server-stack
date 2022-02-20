FROM pihole/pihole
COPY ./init-adlists.sh ./init-custom.sh /tmp/
RUN chmod +x /tmp/init-adlists.sh && chmod +x /tmp/init-custom.sh

ARG HOST_IP
ARG HOST_NAME
ARG ALIASES
RUN /tmp/init-adlists.sh && /tmp/init-custom.sh
