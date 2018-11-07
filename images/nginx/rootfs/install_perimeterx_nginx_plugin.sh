#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

luarocks install lustache
luarocks install luasocket

cd "$BUILD_PATH"
curl -sSL https://github.com/bungle/lua-resty-nettle/archive/v0.95.tar.gz | tar xzf -
cp "$BUILD_PATH/lua-resty-nettle-0.95/lib/resty/nettle.lua" "$LUA_LIB_DIR/resty/"
cp -R "$BUILD_PATH/lua-resty-nettle-0.95/lib/resty/nettle" "$LUA_LIB_DIR/resty/"

cd "$BUILD_PATH"
curl -sSL https://github.com/pintsized/lua-resty-http/archive/v0.08.tar.gz | tar xzf -
cd "$BUILD_PATH/lua-resty-http-0.08"
make install

# Install GNU Nettle
cd "$BUILD_PATH"
curl -sSL https://ftp.gnu.org/gnu/nettle/nettle-3.2.tar.gz | tar xzf -
cd "$BUILD_PATH/nettle-3.2"
./configure && make && make install

# PerimeterX Lua package
cd "$BUILD_PATH"
curl -sSL https://github.com/PerimeterX/perimeterx-nginx-plugin/archive/v5.2.0.tar.gz | tar xzf -
cd "$BUILD_PATH/perimeterx-nginx-plugin-5.2.0"
make install

cd "$BUILD_PATH"
rm -rf "$BUILD_PATH/lua-resty-nettle-0.95"
rm -rf "$BUILD_PATH/lua-resty-http-0.08"
rm -rf "$BUILD_PATH/nettle-3.2"
rm -rf "$BUILD_PATH/perimeterx-nginx-plugin-5.2.0"