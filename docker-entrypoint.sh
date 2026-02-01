#!/bin/sh

set -e

echo "Starting n8n..."

if [ ! -f /home/node/.n8n/.imported ]; then
 echo "Importing workflows..."
 for workflow in /workflows/*.json; do
   if [ -f "$workflow" ]; then
     echo "Importing workflow: $workflow"
     n8n import:workflow --input="$workflow"
   fi
 done
 touch /home/node/.n8n/.imported
fi

exec n8n