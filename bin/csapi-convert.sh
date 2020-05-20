#!/usr/bin/env sh

cd "$(dirname "$0")/../api/csapi" || exit
mkdir -p ../yml
for f in *.csapi; do "../../bin/csapi2yml" "$f" > "../yml/${f%.csapi}.yml"; done
