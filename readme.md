# Postgres Users DB

A really simple postgres users dockerized DB that is easy to modify and use to make a easy develop start

**Note:** The users data was generated using [mockaroo](https://www.mockaroo.com/)

<br/>

## Docker Project commands

**Note:** Before running any of these commands be sure that your **CWD** is **postgres_users_db** directory.

### Docker Login Into GitHub Container Registry

```bash
docker login -u joseesco24 -p < authentication token > ghcr.io
```

### Docker Access To The Container Terminal

```bash
docker exec -it postgres_users_db /bin/bash
```

### Docker Push The Image To GitHub Container Registry

```bash
docker push ghcr.io/joseesco24/postgres_users_db:latest
```

<br/>

## Docker Compose Project Commands

**Note:** Before running any of these commands be sure that your **CWD** is **postgres_users_db** directory.

### Docker Compose Build Image Using Compose File

```bash
docker-compose -f compose.build.yaml build
```

<br/>
