#!/usr/bin/env sh
cd $APP_HOME

echo "Installing packages..."
yarn install

echo "Running server ibeacon-devices..."
yarn start

exec "$@"