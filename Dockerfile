FROM postgres:15.1

ENV POSTGRES_DB=users_db
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres

ARG WORKDIR=/home/build

RUN mkdir -p $WORKDIR

COPY ["schema_1", "$WORKDIR/schema_1/"]
COPY ["schema_2", "$WORKDIR/schema_2/"]

COPY ["mount_db.sh", "/docker-entrypoint-initdb.d/"]

RUN apt-get update
RUN apt-get install -y dos2unix
RUN dos2unix /docker-entrypoint-initdb.d/mount_db.sh