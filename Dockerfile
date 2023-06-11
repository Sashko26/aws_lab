# Використовуємо офіційний образ Nginx
FROM nginx

# Видаляємо стандартну конфігурацію Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копіюємо нашу власну конфігурацію Nginx
COPY nginx.conf /etc/nginx/conf.d

# Копіюємо файли веб-застосунку
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

# Встановлюємо пакет curl
RUN apt-get update && apt-get install -y curl


# Встановлюємо Watchtower
RUN apk add --no-cache curl
RUN curl -L https://github.com/containrrr/watchtower/releases/download/v1.4.0/watchtower-linux-amd64 -o /usr/bin/watchtower && chmod +x /usr/bin/watchtower
