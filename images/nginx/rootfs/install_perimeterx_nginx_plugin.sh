#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

luarocks install lustache
luarocks install luasocket
luarocks install perimeterx-nginx-plugin