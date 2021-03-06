#!/bin/bash
# Puts static HTML resources into ./build directory.
# That directory should be served statically.
# Entry point is index.html.

echo ">>> Building app..."
docker run --rm -i -v "$PWD:/build" -w /build node:10.16.0-slim "./_build.sh"
build_error_code=$?
if [[ "0" != "$build_error_code" ]]; then
    echo "<<< App Build failed!"
    exit $build_error_code
fi
echo ">>> Building app... done"
echo
