FROM golang:1.16-alpine as firststep

WORKDIR /usr/src/app

COPY ./example-backend/. .

RUN CGO_ENABLED=0 go build -o /src/go/server

FROM scratch

COPY --from=firststep /src/go/server /server

ENV PORT=8000

ENV REQUEST_ORIGIN="http://localhost:5000"

EXPOSE 8000

ENTRYPOINT ["/server"]
