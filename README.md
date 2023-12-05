# Jenkins

Local work with [Jenkins](https://www.jenkins.io).

## Bootstrap

**TL;DR** `docker compose run -d`

### Build

```shell
docker build -t tech/jenkins:latest .
```

### Run

```shell
docker run --name jenkins -d -p 8080:8080 tech/jenkins:latest
```

### Go to [localhost:8080](http://localhost:8080/)

User: `admin` / `admin`
