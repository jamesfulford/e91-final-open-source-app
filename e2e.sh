#!/bin/bash

target_url=${1:-"http://127.0.0.1:8089"}

test_container_name="e91-docker-test"

echo ">>> Running end-to-end test against $target_url..."
docker pull cypress/included:3.7.0
docker run \
    --net="host" \
    -h "$test_container_name" \
    -i \
    --rm \
    -v "$PWD:/e2e" -w /e2e \
    --entrypoint cypress \
    cypress/included:3.7.0 \
    run --config "baseUrl=$target_url"
e2e_return_code=$?

if [[ "0" != "$e2e_return_code" ]]; then
    echo "<<< e2e tests failed!"
    exit $e2e_return_code
fi
echo ">>> Running end-to-end test against $target_url... done"
