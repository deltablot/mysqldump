FROM mysql:8
RUN mkdir /out
ENTRYPOINT ["mysqldump"]
