#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bf7cdb56-1918-4475-b738-9ec3c62ece97"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

