#!/bin/bash

echo "start entry"

sh /docker-entrypoint-initdb.d/import_data.sh &

/opt/mssql/bin/sqlservr

echo "end entry"
