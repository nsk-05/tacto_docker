#!/usr/bin/env bash
cd "$(dirname "$0")"

# Kill previous container if necessary
docker kill tacto_container &> /dev/null
docker remove tacto_container &> /dev/null

echo
echo
echo "Docker container dissapeared :|"
echo
echo