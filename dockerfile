# Usa una imagen base de Nginx
FROM nginx:latest

# Copia los archivos estáticos de la aplicación al directorio de trabajo de Nginx
COPY app /usr/share/nginx/html

# Expone el puerto en el que Nginx estará escuchando
EXPOSE 80

# No es necesario ningún comando CMD, ya que Nginx se ejecuta automáticamente en el contenedor de manera predeterminada