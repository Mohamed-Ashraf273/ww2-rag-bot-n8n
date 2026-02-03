#!/bin/bash

# Run n8n with persistent data
docker run -it --rm \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  -e DB_SQLITE_POOL_SIZE=5 \
  -e N8N_RUNNERS_ENABLED=true \
  -e N8N_BLOCK_ENV_ACCESS_IN_NODE=false \
  -e N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true \
  mohamedashraf273/ww2-rag-bot:latest
