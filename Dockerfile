FROM ubuntu:jammy
LABEL maintainer="Kesara Rathnayake <kesara@staff.ietf.org>"

ENV DEBIAN_FRONTEND noninteractive
ENV DISABLE_HTTPS TRUE

RUN apt-get update && \
    apt-get install -y git software-properties-common && \
    add-apt-repository universe && \
    apt-get update

RUN git clone https://github.com/meetecho/zulip.git

RUN zulip/scripts/setup/install --self-signed-cert --email=kesara@staff.ietf.org --hostname=devbox.amsl.com

COPY start.sh /
ENTRYPOINT ["/start.sh"]
