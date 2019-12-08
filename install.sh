#!/bin/bash

# Depends on Node Version Manager utility.
# https://github.com/nvm-sh/nvm
# (strongly suggest using the sample Ansible task provided in the readme)

# Depends on Yarn package manager utility.
# curl -o- -L https://yarnpkg.com/install.sh | bash

nvm install 10.15.0
nvm use 10.15.0

echo ">>> Installing Dependencies..."
yarn
install_error_code=$?
if [[ "0" != "$install_error_code" ]]; then
    echo "<<< Install failed!"
    exit $install_error_code
fi
echo ">>> Installing Dependencies... done"
echo
