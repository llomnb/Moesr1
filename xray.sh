#!/bin/sh
if [ ! -f UUID ]; then
  UUID="30a1e4eb-d9c5-4eb9-8c8e-aca0402a6fcb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

