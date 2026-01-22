#!/usr/bin/env bash
set -euo pipefail

# Input GTF file
GTF="data/Mus_musculus.GRCm39.115.chr.gtf"
# Output file
OUT="data/outputs/letters.txt"

# Make sure outputs directory exists
mkdir -p data/outputs

# Extract first letter of each gene name, sort, and keep unique
grep 'gene_name "' "$GTF" \
| awk -F 'gene_name "' '{print substr($2,1,1)}' \
| awk -F '"' '{print $1}' \
| sort | uniq \
> "$OUT"

echo "letters.txt written:"
wc -l "$OUT"
cat "$OUT"
