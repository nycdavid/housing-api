FROM golang:1.10-alpine

WORKDIR /go/src/app

COPY ./Gopkg* ./
COPY ./main.go ./

RUN apk update && \
  apk add curl git && \
  curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh && \
  dep ensure

RUN go install

CMD ["app"]
