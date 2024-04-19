FROM alpine:latest
LABEL org.opencontainers.image.authors="Jonathan Respeto <jrespeto@akamai.com>"
LABEL MAINTAINER="Jonathan Respeto"
LABEL MAINTAINER_EMAIL="jrespeto@akamai.com"
LABEL version="0.1"
LABEL description="Test Docker Image"

RUN --mount=target=/var/lib/apt/lists,type=cache \
    --mount=target=/var/cache/apt,type=cache \
    apt-get update \
    && apt-get upgrade -y

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
