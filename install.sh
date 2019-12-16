#!/bin/bash

echo ">>> Installing Dependencies..."
docker run -i -v "$PWD:/install" -w /install node:10.16.0-slim "./_install.sh"
install_error_code=$?
if [[ "0" != "$install_error_code" ]]; then
    echo "<<< Install failed!"
    exit $install_error_code
fi
echo ">>> Installing Dependencies... done"
echo
