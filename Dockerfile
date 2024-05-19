FROM nginx:latest

RUN apt-get update && apt-get install -y git

# Установка оновленого репозиторію як змінної оточення для уникнення кешування
ARG CACHEBUST=1

RUN git clone https://github.com/mavi-fiot/IITLR45v4web.git /tmp/IITLR45v4web
RUN cp -r /tmp/IITLR45v4web/* /usr/share/nginx/html/
RUN rm -rf /tmp/IITLR45v4web

COPY nginx/default.conf /etc/nginx/conf.d/default.conf