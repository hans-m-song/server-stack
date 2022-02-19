FROM pihole/pihole
COPY ./init-adlists.sh /tmp/init-adlists.sh
RUN chmod +x /tmp/init-adlists.sh
RUN /tmp/init-adlists.sh
