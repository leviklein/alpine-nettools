FROM alpine

RUN apk --no-cache add curl 
RUN apk --no-cache add busybox-extras 

WORKDIR /

COPY init.sh .
RUN chmod +x init.sh

ENTRYPOINT /init.sh