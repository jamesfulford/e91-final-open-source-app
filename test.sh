#!/bin/bash

echo ">>> Running tests..."
docker run -i -v "$PWD:/test" -w /test node:10.16.0 "./_test.sh"
test_error_code=$?
if [[ "0" != "$test_error_code" ]]; then
    echo "<<< Tests failed!"
    exit $test_error_code
fi
echo ">>> Running tests... done"
echo
