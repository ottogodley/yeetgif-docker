FROM golang:alpine

RUN apk add git \
&& go get -u github.com/sgreben/yeetgif/cmd/gif

