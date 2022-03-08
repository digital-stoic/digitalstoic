#!/bin/sh

npx @marp-team/marp-cli@latest index.md

python3 -m http.server 8000
