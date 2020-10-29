This repository holds the source code for the blog post [Building portable front-end applications with Docker](https://dev.to/jonkoops/building-portable-front-end-applications-with-docker-2cpm)

To run the code you use the following commands:

```bash
docker build --tag frontend .
docker run --publish 8080:80 --name server --env FRONTEND_ENV='{ "APP_TITLE": "Hello Environment!" }' frontend
```