FROM nginx:alpine
LABEL maintainer="Yonier Gomez"
COPY index.html containercat.jpg /usr/share/nginx/html/
EXPOSE 80
