#!/usr/bin/env bash
# Script entrypoint.sh starts your app--12-factor app that reads config and secrets from environment variables.

exec caddy respond --listen=:${PORT:-8080} --body='{
    "app": "myapp",
    "env": "{env.ENV}",
    "color": "{env.COLOR}",
    "corners": "{env.CORNERS}",
    "password": "{env.PASSWORD}",
    "token": "{env.TOKEN}",
    "features": [
        "boringtechnology"
    ]
}'
