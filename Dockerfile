FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD docs-dist  /usr/share/nginx/html/mirror/x-render

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]