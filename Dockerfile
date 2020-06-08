FROM alpine:latest
ADD assets/check /opt/resource/check
ADD assets/in /opt/resource/in
RUN \
set -ex && \
apk --update --no-cache add \
bash \
jq \
git \
openssh-client \
ca-certificates && \
chmod +x /opt/resource/* && \
rm -rf /var/cache/apk/*



#RUN chmod +x /opt/resource/*
