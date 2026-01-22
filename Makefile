# Mouse GTF Bioinformatics Pipeline

# Input file
GTF = data/Mus_musculus.GRCm39.115.chr.gtf

# Output files
GENES = data/outputs/genes.txt
BED = data/outputs/example.bed
LETTERS = data/outputs/letters.txt
LENGTHS = data/outputs/example_lengths.txt
JOIN = data/outputs/example_join.txt

# Default target
all: $(GENES) $(BED) $(LETTERS) $(LENGTHS) $(JOIN)

$(GENES): scripts/01_extract_genes.sh $(GTF)
	bash scripts/01_extract_genes.sh

$(BED): scripts/02_make_bed.sh $(GTF)
	bash scripts/02_make_bed.sh

$(LETTERS): scripts/03_letters.sh $(GTF)
	bash scripts/03_letters.sh

$(LENGTHS): scripts/04_lengths.sh $(GTF)
	bash scripts/04_lengths.sh

$(JOIN): scripts/05_join.sh $(BED) $(LENGTHS)
	bash scripts/05_join.sh

# Clean outputs
clean:
	rm -f data/outputs/*
