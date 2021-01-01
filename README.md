# Microservices API Gateway 

Microservices API Gateway built with Nginx

![Api Gateway](https://github.com/riccardoAtzori91/api-gateway/workflows/api-gateway-release/badge.svg)

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

Now, you can run the following command

```shell
docker-compose up -d
```

It's important to create a **bridge** network type, during development,
TODO: Continuare. 


## Configuration

By default only one location is exposed.

```nginx

include /etc/nginx/customization.d/default-error-page.conf;

location / {
    include /etc/nginx/customization.d/header-debug.conf;
    include /etc/nginx/set_proxy_headers.conf;
    
    proxy_pass http://$proxy_name$proxy_prefix$proxy_version$proxy_url;
}

```

As can be seen in the image above
