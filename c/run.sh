#/bin/bash

set -e

docker build -t pink-camp-design-patterns-c .

echo "\n---\n"

docker run -it --rm --name pink-camp-design-patterns-c pink-camp-design-patterns-c
