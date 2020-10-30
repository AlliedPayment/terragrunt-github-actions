FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]
RUN apk add py-pip 
RUN pip install awscli
COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
