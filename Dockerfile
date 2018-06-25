FROM alpine:latest

LABEL maintainer.first="Nicolai Reuschling 'nicolai.reuschling@dkd.de'"

RUN mkdir /composer
COPY ./composer /composer

ENTRYPOINT ["/usr/bin/tail", "-f", "/dev/null"]
