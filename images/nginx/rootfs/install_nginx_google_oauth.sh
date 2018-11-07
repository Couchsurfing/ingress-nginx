#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd "$BUILD_PATH"

curl -sSL https://github.com/cloudflare/nginx-google-oauth/archive/v1.1.1.tar.gz | tar xzf -
mv "$BUILD_PATH/nginx-google-oauth-1.1.1/access.lua" "$LUA_LIB_DIR/"
rm -rf "$BUILD_PATH/nginx-google-oauth-1.1.1"