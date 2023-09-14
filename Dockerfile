FROM alpine:3.18
RUN apk add --update --no-cache mysql-client
RUN mkdir /out
ENTRYPOINT ["mysqldump"]
