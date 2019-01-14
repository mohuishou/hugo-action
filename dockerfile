FROM alpine:3.8

LABEL name="hugo"
LABEL version="1.0.0"
LABEL repository="https://github.com/mohuishou/hugo-action"
LABEL homepage="https://github.com/mohuishou/hugo-action"

LABEL maintainer="mohuishou <1@lailin.xyz>"
LABEL com.github.actions.name="GitHub Action for Hugo"
LABEL com.github.actions.description="Builds a Hugo site."
LABEL com.github.actions.icon="sidebar"
LABEL com.github.actions.color="purple"

RUN apk add git && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.53/hugo_0.53_Linux-64bit.tar.gz && \
    tar -xzvf hugo_0.53_Linux-64bit.tar.gz 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["echo","done"]