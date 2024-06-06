#!/bin/sh -ex

curl -fsSLo- --compressed https://github.com/nodejs/node/raw/main/README.md | awk '/^gpg --keyserver hkps:\/\/keys\.openpgp\.org --recv-keys/ {print $5}' | uniq > keys/node.keys
