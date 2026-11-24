
#!/bin/bash

# Script para construir y lanzar el laboratorio FRMCS.

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

echo "Checking Docker Compose..."

if docker compose config --quiet; then
    echo "Compose is valid. Building images..."
    docker compose build --no-cache

    echo "Starting containers..."
    docker compose up -d

    echo "Container status:"
    docker compose ps
else
    echo "ERROR: Invalid Docker Compose configuration."
    exit 1
fi
