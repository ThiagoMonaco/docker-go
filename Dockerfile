FROM golang:alpine as builder

WORKDIR /app

COPY . .

RUN go build -o hello .

FROM scratch
COPY --from=builder /app .
CMD ["./hello"]
