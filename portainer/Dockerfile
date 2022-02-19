FROM busybox AS init
ARG PASSWORD
RUN echo -n ${PASSWORD} >/password

FROM portainer/portainer-ce
COPY --from=init /password /tmp/portainer-admin-password
CMD ["--admin-password-file", "/tmp/portainer-admin-password"]
