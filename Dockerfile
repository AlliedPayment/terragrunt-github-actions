FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]
RUN apk add py-pip 
RUN pip install awscli
RUN mkdir -p /github/home/.kube/
RUN touch /github/home/.kube/config
COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
