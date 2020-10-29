FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY ./src/ /usr/share/nginx/html/
COPY ./startup.sh /app/startup.sh
CMD sh /app/startup.sh