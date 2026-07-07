FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ["Duoc UC Landing - Simulador Campaña.html", "/usr/share/nginx/html/index.html"]
COPY ["Duoc UC Landing.dc.html", "/usr/share/nginx/html/Duoc UC Landing.dc.html"]
COPY support.js /usr/share/nginx/html/support.js
COPY uploads/ /usr/share/nginx/html/uploads/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
