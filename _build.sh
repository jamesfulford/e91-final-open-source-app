#!/bin/bash
yarn --frozen-lockfile --production
CI=true yarn test
yarn build
