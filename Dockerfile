# Build Golang binary
FROM golang:1.20.2 AS build-golang

WORKDIR /Users/pmartuszewski/GolandProjects/solid-gate

COPY . .
RUN go get -v && go build -v -o /usr/local/bin/solid-gate

EXPOSE 8080
CMD ["solid-gate"]
