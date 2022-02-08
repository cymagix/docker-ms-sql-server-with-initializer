#!/bin/bash

sleep 10

if [ `ls -U1 /var/opt/mssql/data | grep $DB_NAME | wc -l` -eq 0 ]; then
    cd /docker-entrypoint-initdb.d
    sql_files=`ls *.sql`

    for file in $sql_files;
    do
        for i in {1..30};
        do
            /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i $file
            if [ $? -eq 0 ]
            then
                echo "${file} completed."
                break
            else
                echo "${file} failed."
                sleep 1
                break
            fi
        done
    done
fi