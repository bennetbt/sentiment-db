FROM mysql

ENV MYSQL_ROOT_PASSWORD 12345
#WORKDIR C:/Users/Student28/Desktop/project3/
#COPY  PWD C:/Users/Student28/Desktop/project3/output_file.sql

ADD output_file.sql /docker-entrypoint-initdb.d

EXPOSE 3306