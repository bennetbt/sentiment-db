FROM postgres:10.0-alpine

COPY output_file.sql /docker-entrypoint-initdb.d/