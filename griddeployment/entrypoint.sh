#!/bin/sh
sed -i 's@REPLACE_APPID@'"$THREEBOT_APP_ID"'@' /3bot_auth/config.py
sed -i 's@REPLACE_DOCUMENTSERVERURL@'"$DOCUMENTSERVER_URL"'@' /filebrowser_frontend/dist/index.html

service nginx start
exec /usr/bin/supervisord