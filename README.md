# mysqldump

## Description

This Docker image provides the `mysqldump` command. Generally, this command is bundled with MySQL Server, and you might not always want to install MySQL on the server that needs to do the backups. So this is a nifty way to run `mysqldump` without installing anything. Furthermore, it avoids warnings in output!

## Usage

Environment values required:

* `MYSQL_USER`
* `MYSQL_PASSWORD`
* `MYSQL_HOST`
* `MYSQL_PORT` (optional if default)
* `your-database-name`

Example:

~~~bash
docker run --rm -e MYSQL_USER=your-mysql-user \
  -e MYSQL_PASSWORD=your-passowrd \
  -e MYSQL_HOST=your-mysql.example.com \
  -e MYSQL_PORT=3306 \
  -v $(pwd):/out ghcr.io/deltablot/mysqldump -r /out/dump.sql your-database-name
~~~
