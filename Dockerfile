FROM alpine:latest

LABEL maintainer "T Koopman"

RUN apk add --no-cache \
            rsync \
            openssh-client
            
COPY ssh_config /etc/ssh/ssh_config
            
VOLUME ["/data"]
VOLUME ["/ssh"]

ENTRYPOINT ["rsync"]
CMD ["--help"]