FROM golang:1.8.5-jessie

ADD src/hello-world.go hello-world.go

ENV MESSAGE "Welcome! You can change this message by replacing the MESSAGE environment variable."

EXPOSE 8080

LABEL io.openshift.expose-services 8080/http

USER 1001

CMD go run hello-world.go

