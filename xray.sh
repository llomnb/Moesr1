#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fcf24c44-636b-48d4-880b-c80f3f88f7fe"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

