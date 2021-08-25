FROM alpine

RUN apk update && \
    apk add --no-cache \
    git \
    curl \
    vim

COPY ./vim/.vimrc /root/.vimrc
COPY ./vim/.vim /root/.vim

WORKDIR /root

ENTRYPOINT ["ash"]
