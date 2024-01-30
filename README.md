# mysqldump

## Usage

Use docker env to configure the ``~/.my.cnf`` file used by mysqldump.

~~~bash
docker run --rm -e MYSQL_USER=your-mysql-user -e MYSQL_PASSWORD=your-passowrd -e MYSQL_HOST=your-mysql.example.com -e MYSQL_PORT=3306 -v $(pwd):/out ghcr.io/deltablot/mysqldump -r /out/dump.sql your-database-name
~~~
