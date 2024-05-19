FROM nginx:latest

# Оновлення пакетів та встановлення git
RUN apt-get update && apt-get install -y git

# Виконання клонування репозиторію та копіювання вмісту
RUN git clone https://github.com/mavi-fiot/IITLR45v4web.git /usr/share/nginx/html/

# Копіювання конфігурації NGINX
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
