#!/usr/bin/env bash
set -euo pipefail

BED="data/outputs/example.bed"              # chr start end gene_id gene_name
LEN="data/outputs/example_lengths.txt"      # gene_id gene_name length
OUT="data/outputs/example_join.txt"

mkdir -p data/outputs

# Join on gene_id, output: chr start end gene_id gene_name length
awk 'NR==FNR {
    len[$1]=$3   # store length by gene_id
    next
}
{
    gid=$4; gname=$5
    if (gid in len) {
        print $1"\t"$2"\t"$3"\t"gid"\t"gname"\t"len[gid]
    }
}' "$LEN" "$BED" > "$OUT"

echo "example_join.txt written:"
wc -l "$OUT"
head "$OUT"

