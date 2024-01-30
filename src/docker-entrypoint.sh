#!/usr/bin/env bash
# in order to avoid issues with this damn warning that using password on command line is insecure, generate a config file from ENV and use that instead of CLI args
cat > ~/.my.cnf <<EOF
[mysqldump]
user=${MYSQL_USER}
password=${MYSQL_PASSWORD}
host=${MYSQL_HOST:-localhost}
port=${MYSQL_PORT:-3306}
EOF

# add --set-gtid-purged=OFF to avoid these:
# Warning: A partial dump from a server that has GTIDs will by default include the GTIDs of all transactions, even those that changed suppressed parts of the database. If you don't want to restore GTIDs, pass --set-gtid-purged=OFF. To make a complete dump, pass --all-databases --triggers --routines --events.
# Warning: A dump from a server that has GTIDs enabled will by default include the GTIDs of all transactions, even those that were executed during its extraction and might not be represented in the dumped data. This might result in an inconsistent data dump.
mysqldump --set-gtid-purged=OFF "$@"
