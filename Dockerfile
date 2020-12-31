FROM nginx:alpine

COPY src/default.d/             /etc/nginx/default.d/
COPY src/gzip.conf              /etc/nginx/gzip.conf
COPY src/variable.conf          /etc/nginx/variable.conf
COPY src/proxy.conf             /etc/nginx/proxy.conf
COPY src/timeout.conf           /etc/nginx/timeout.conf
COPY src/set_proxy_headers.conf /etc/nginx/set_proxy_headers.conf
COPY src/nginx.conf             /etc/nginx/nginx.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]