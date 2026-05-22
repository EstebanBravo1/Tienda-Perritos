FROM nginx:alpine

# Copia todo el contenido del directorio actual al contenedor de Nginx
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]