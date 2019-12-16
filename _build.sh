#!/bin/bash
echo ">> Installing dependencies..."
yarn --frozen-lockfile --production
install_code=$?
if [[ "0" != "$install_code" ]]; then
    echo "<< Install failed!"
    exit $install_code
fi
echo ">> Installing dependencies... done"
echo ">> Running tests..."
CI=true yarn test
test_code=$?
if [[ "0" != "$test_code" ]]; then
    echo "<< Tests failed!"
    exit $test_code
fi
echo ">> Running tests... done"

echo ">> Building assets..."
yarn build
build_code=$?
if [[ "0" != "$build_code" ]]; then
    echo "<< Build failed!"
    exit $build_code
fi
echo ">> Building assets... done"
