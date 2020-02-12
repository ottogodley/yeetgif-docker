FROM golang:alpine as builder

RUN apk add git \
&& go get -u github.com/sgreben/yeetgif/cmd/gif

FROM alpine as runner

COPY --from=builder /go/bin/gif /bin/

RUN apk add gifsicle