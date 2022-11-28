# Postgres Users DB

A really simple postgres users dockerized DB that is easy to modify and use to make a easy develop start

**Note:** The users data was generated using [mockaroo](https://www.mockaroo.com/)

<br/>

## Docker Project commands

**Note:** Before running any of these commands be sure that your **CWD** is **postgres_users_db** directory.

### Docker Build Image Using Compose File

```bash
docker-compose build
```

### Docker Start Service Using Compose File

```bash
docker-compose up
```

### Docker Login Into GitHub Container Registry

```bash
docker login -u joseesco24 -p < authentication token > ghcr.io
```

### Docker Push The Image To GitHub Container Registry

```bash
docker push ghcr.io/joseesco24/postgres_users_db:latest
```

<br/>