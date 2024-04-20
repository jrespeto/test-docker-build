FROM alpine:latest
LABEL org.opencontainers.image.authors="Jonathan Respeto <jrespeto@akamai.com>"
LABEL MAINTAINER="Jonathan Respeto"
LABEL MAINTAINER_EMAIL="jrespeto@akamai.com"
LABEL version="0.1"
LABEL description="Test Docker Image"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ./entrypoint.sh
