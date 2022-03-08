#!/bin/sh

OUT="out"
mkdir -p $OUT

npx @marp-team/marp-cli@latest --html --allow-local-files index.md -o ${OUT}/index.html
npx @marp-team/marp-cli@latest --html --allow-local-files index.md -o ${OUT}/index.pdf

if [ "$DEBUG" = "1" ]; then
    python3 -m http.server 8000
fi
