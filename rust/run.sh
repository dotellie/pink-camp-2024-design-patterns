#/bin/bash

set -e

docker build -t pink-camp-design-patterns-rust .

echo "\n---\n"

docker run -it --rm --name pink-camp-design-patterns-rust pink-camp-design-patterns-rust
