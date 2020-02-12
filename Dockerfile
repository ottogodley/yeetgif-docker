FROM golang:alpine

RUN apk add git gifsicle \
&& go get -u github.com/sgreben/yeetgif/cmd/gif