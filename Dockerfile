FROM golang AS buildimage

WORKDIR /app
ADD . /app
RUN go build -o go-app


FROM alpine
WORKDIR /aplicativo
COPY --from=buildimage /app/go-app /aplicativo/
ENTRYPOINT [ "./go-app"]