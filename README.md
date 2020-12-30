# Microservices API Gateway 


## Getting Started

Make sure you have installed and configured docker in your environment. After that, you can run the below command from the **/src/** directory and get started with `API Gateway` immediately.

Create **docker-compose.yaml**

```yaml
version: '3.4'

services:
    api-gateway:
        image: api-gateway:1.0.0
        container_name: api-gateway
        build:
            context: .
            dockerfile: Dockerfile
        volumes:
            - ./conf.d:/etc/nginx/conf.d
            - ./customization.d:/etc/nginx/customization.d
            - ./location.d:/etc/nginx/location.d
        ports:
            - "80:80"
        networks:
            - demo-network

networks:
  demo-network:
    driver: bridge

```



