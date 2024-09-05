#!/bin/bash

# Switch to postgres user and run commands
# sudo -i -u postgres 

# Check PostgreSQL version
# psql --version

# Create Replication user
# psql -U postgres -c "CREATEUSER replusr REPLICATION LOGIN CONNECTION LIMIT 5 ENCRYPTED PASSWORD '1';"

# Create PostgreSQL user
# psql -U postgres -c "CREATE ROLE kiausr WITH LOGIN PASSWORD '123' CREATEDB CREATEROLE;"

# Create PostgreSQL database
# psql -U postgres -c "createdb kiadb -O kiausr;"


psql -U postgres -f ./script.sql
