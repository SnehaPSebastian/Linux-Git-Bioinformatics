#!/usr/bin/env bash
set -euo pipefail

GTF="data/Mus_musculus.GRCm39.115.chr.gtf"
OUT="data/outputs/example_lengths.txt"

mkdir -p data/outputs

# Use gawk explicitly for better regex and arithmetic support
gawk -F'\t' '$3=="gene" {
    # extract gene_id
    if (match($9,/gene_id "([^"]+)"/,id)) gid=id[1];
    else gid="NA";

    # extract gene_name
    if (match($9,/gene_name "([^"]+)"/,name)) gname=name[1];
    else gname="NA";

    # compute length
    len = ($5 - $4 + 1);

    print gid "\t" gname "\t" len
}' "$GTF" > "$OUT"

echo "example_lengths.txt written:"
wc -l "$OUT"
head "$OUT"

