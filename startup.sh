#!/bin/sh
basePath=/usr/share/nginx/html
fileName=${basePath}/index.html
envsubst < ${fileName} > ${basePath}/index.env.html
mv ${basePath}/index.env.html ${fileName}
nginx -g 'daemon off;'