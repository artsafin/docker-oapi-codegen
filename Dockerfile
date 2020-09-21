# Build
FROM golang:1.14-alpine as builder
RUN apk --no-cache add git gcc g++ musl-dev
RUN go get -u github.com/deepmap/oapi-codegen/cmd/oapi-codegen

# Run
FROM alpine:3.12
COPY --from=builder /go/bin/oapi-codegen /bin/oapi-codegen
RUN mkdir -p /src

ENTRYPOINT ["/bin/oapi-codegen"]

WORKDIR "/src"
