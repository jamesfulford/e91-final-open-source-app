#!/bin/bash

echo ">>> Running tests..."
CI=true yarn test
test_error_code=$?
if [[ "0" != "$test_error_code" ]]; then
    echo "<<< Tests failed!"
    exit $test_error_code
fi
echo ">>> Running tests... done"
echo
