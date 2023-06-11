# Використовуємо офіційний образ Nginx
FROM nginx

# Видаляємо стандартну конфігурацію Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копіюємо нашу власну конфігурацію Nginx
COPY nginx.conf /etc/nginx/conf.d

# Копіюємо файли веб-застосунку
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
