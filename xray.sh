#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c59e643e-d6f9-490d-9071-68f7c278fd8b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

