#!/usr/bin/env sh

cd "$(dirname "$0")/.." || exit
mkdir -p api/csapi
git clone https://github.com/ElementsProject/lightning.git
find lightning -name "*.csv" -type f -exec cp {} api/csapi/ \;
rm -rf lightning
for f in api/csapi/*.csv; do mv -- "$f" "${f%.csv}.csapi"; done
