FROM alpine:edge
RUN sed -i 's/dl-4/dl-5/g' /etc/apk/repositories
RUN apk --update add nginx
ADD . /var/lib/nginx/html
RUN rm /var/lib/nginx/html/Dockerfile && rm -Rf /var/lib/nginx/html/.git && mkdir -p /run/nginx
CMD ["/usr/sbin/nginx","-g","daemon off;"]
