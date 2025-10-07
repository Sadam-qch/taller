# Imagen base ligera de Nginx
FROM nginx:alpine

# Metadata
LABEL maintainer="tu@email.com"
LABEL description="To-Do App - Bootcamp DevSecOps"
LABEL version="1.0.0"

# Copiar archivos de la aplicación al directorio de Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Nginx ya tiene un CMD por defecto, no necesitamos especificarlo
# Pero si quisiéramos personalizarlo:
# CMD ["nginx", "-g", "daemon off;"]