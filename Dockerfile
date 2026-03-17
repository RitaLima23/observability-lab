FROM golang:1.22-alpine

WORKDIR /go/src/github.com/prometheus/compliance

COPY . .

ENV GO111MODULE=off

RUN go build -o /app/compliance ./cmd/promql-compliance-tester

WORKDIR /app

ENTRYPOINT ["./compliance"]