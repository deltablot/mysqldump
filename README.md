# mysqldump

## Usage

~~~bash
docker run --rm -v $(pwd):/out deltablot/mysqldump -r /out/dump.sql -h $HOSTNAME -p$PASSWORD --port $PORT -u $USER $NAME
~~~
