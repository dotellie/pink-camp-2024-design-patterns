#/bin/bash

set -e

docker build -t pink-camp-design-patterns-c .

echo ""
echo "---"
echo ""

if [ $(uname -s) = MINGW* ]; then
  winpty docker run -it --rm --name pink-camp-design-patterns-c pink-camp-design-patterns-c
else
  docker run -it --rm --name pink-camp-design-patterns-c pink-camp-design-patterns-c
fi
