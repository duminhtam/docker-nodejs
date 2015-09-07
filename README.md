# NodeJS on Docker
NodeJS images version 0.12.7 on Cent 6.6

## Your Dockerfile
```
FROM chotot/nodejs:0.12

WORKDIR /app

ADD . /app

RUN source ~/.bashrc && npm i
```
## RUN
docker run -d <yourtag> <npm-script>
### Example

    docker run -d <yourtag> start    
    docker run -d <yourtag> start-api
    docker run -d <yourtag> start-app
