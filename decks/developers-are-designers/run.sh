#!/bin/sh

OUT="out"
rm -rf $OUT
mkdir -p $OUT
cp -Rp img $OUT

if [ "$DEV" = "1" ]; then
    npx @marp-team/marp-cli@latest --html --allow-local-files --watch --output ${OUT}/index.html index.md &
    python3 -m http.server 8000
else
    npx @marp-team/marp-cli@latest --html --allow-local-files --output ${OUT}/index.html index.md
    npx @marp-team/marp-cli@latest --html --allow-local-files --output ${OUT}/index.pdf index.md
fi
