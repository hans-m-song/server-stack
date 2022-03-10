FROM nginx
COPY ./nginx.conf /tmp/nginx/nginx.conf
ARG HOST_NAME
ENV HOST_NAME=${HOST_NAME}
ARG PUBLIC_HOST_NAME
ENV PUBLIC_HOST_NAME=${PUBLIC_HOST_NAME}
RUN envsubst '$PUBLIC_HOST_NAME $HOST_NAME' </tmp/nginx/nginx.conf >/etc/nginx/nginx.conf
