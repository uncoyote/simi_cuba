#!/bin/bash

echo "=========================================================="
echo "Docker container for test PostgreSQL database with postgis"
echo "=========================================================="

if [ "$1" == "bg" ] #bg - background
  then
    PARA="-d"
  else
    PARA=""
fi

docker run $PARA  \
  --name simi_devdb \
  -e POSTGRES_PASSWORD=postgres \
  -e PGDATA="/var/lib/postgresql/data/pgdata" \
  -v "$(pwd)/pgdata":"/var/lib/postgresql/data/pgdata" \
  -p 5432:5432 \
  --rm \
  sogis/simi_proto


#Connect to db with username postgres (default) and password postgres (password is set by POSTGRES_PASSWORD)