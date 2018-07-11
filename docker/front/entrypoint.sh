#!/bin/sh

set -e
echo "[ ****************** ] Front - Starting Endpoint of Application"
# if ! [ -d "./node_modules" ]; then
    echo "node_modules not found - Run yarn install..."
    yarn
# fi
echo "[ ****************** ] Front - Ending Endpoint of Application"
exec "$@"
