#!/usr/bin/env bash
set -euo pipefail

GTF="data/Mus_musculus.GRCm39.115.chr.gtf"
BED="data/outputs/example.bed"

mkdir -p data/outputs

# Extract gene coordinates with gene_id and gene_name
gawk -F'\t' '$3=="gene" {
    if (match($9,/gene_id "([^"]+)"/,id)) gid=id[1]; else gid="NA";
    if (match($9,/gene_name "([^"]+)"/,name)) gname=name[1]; else gname="NA";
    print $1"\t"$4-1"\t"$5"\t"gid"\t"gname
}' "$GTF" > "$BED"

echo "example.bed written:"
wc -l "$BED"
head "$BED"

