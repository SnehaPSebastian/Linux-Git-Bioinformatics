#!/usr/bin/env bash
set -euo pipefail

GTF="data/Mus_musculus.GRCm39.115.chr.gtf"
OUT="data/outputs/genes.txt"

mkdir -p data/outputs

grep 'gene_name "' "$GTF" \
| awk -F 'gene_name "' '{print $2}' \
| awk -F '"' '{print $1}' \
> "$OUT"

echo "genes.txt written:"
wc -l "$OUT"
head "$OUT"

