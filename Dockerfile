FROM alpine:latest

LABEL maintainer "T Koopman"

RUN apk add --no-cache \
            rsync \
            openssh-client
            
VOLUME ["/data"]
VOLUME ["/ssh"]

ENTRYPOINT ["rsync"]
CMD ["--help"]