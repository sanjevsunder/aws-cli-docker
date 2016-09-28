FROM alpine:3.4

RUN apk --no-cache update \
    && apk --no-cache add --update \
    python \
    py-pip \
    py-setuptools \
    ca-certificates \
    groff \
    less && \
    pip --no-cache-dir install awscli \
ADD https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 /usr/bin/docker
RUN chmod +x /usr/bin/docker
