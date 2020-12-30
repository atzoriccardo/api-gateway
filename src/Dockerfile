FROM nginx:alpine

COPY default.d/             /etc/nginx/default.d/
COPY gzip.conf              /etc/nginx/gzip.conf
COPY variable.conf          /etc/nginx/variable.conf
COPY proxy.conf             /etc/nginx/proxy.conf
COPY timeout.conf           /etc/nginx/timeout.conf
COPY set_proxy_headers.conf /etc/nginx/set_proxy_headers.conf
COPY nginx.conf             /etc/nginx/nginx.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]