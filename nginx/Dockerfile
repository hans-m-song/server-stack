FROM nginx
COPY ./nginx.conf /tmp/nginx/nginx.conf
ARG HOST_NAME
ENV HOST_NAME=${HOST_NAME}
RUN envsubst '$HOST_NAME $HOST_IP' </tmp/nginx/nginx.conf >/etc/nginx/nginx.conf
