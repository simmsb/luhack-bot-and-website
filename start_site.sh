#!/bin/sh
/opt/poetry/bin/poetry run alembic upgrade head \
    && /opt/poetry/bin/poetry run uvicorn --proxy-headers --host "0.0.0.0" --port 8080 luhack_site.site:app
