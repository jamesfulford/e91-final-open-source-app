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
echo ">>> Installing Dependencies... done"
echo
