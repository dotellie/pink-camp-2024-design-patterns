#/bin/bash

set -e

docker build -t pink-camp-design-patterns-rust .

echo ""
echo "---"
echo ""

if [ $(uname -s) = MINGW* ]; then
  winpty docker run -it --rm --name pink-camp-design-patterns-rust pink-camp-design-patterns-rust
else
  docker run -it --rm --name pink-camp-design-patterns-rust pink-camp-design-patterns-rust
fi
