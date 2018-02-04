FROM nginx:1.13.8-alpine
LABEL maintainer "palydingnow@gmail.com"

COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY h5bp /etc/nginx/h5bp

COPY sites-available/example.com /etc/nginx/sites-enabled/default