#!/bin/bash

# Show expanded commands while running
set -x

# Stop the script if any command fails
set -e 
set -o pipefail

cd $TRAVIS_BUILD_DIR

if [[ $TRAVIS_RUST_VERSION = stable ]]; then
  cargo test --release --no-run
  cargo test --release --features use-mock-routing
fi
