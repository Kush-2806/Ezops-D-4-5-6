FROM tomcat:8.0-alpine

LABEL maintainer="kush.shah999@gmail.com"

COPY  ezops.txt /usr/local/bin/
COPY  docker-entrypoint.sh /usr/local/bin/
WORKDIR /usr/local/bin
RUN chmod +x docker-entrypoint.sh
RUN chmod +x ezops.txt
RUN dos2unix docker-entrypoint.sh
EXPOSE 8080

CMD ["docker-entrypoint.sh", "run"]