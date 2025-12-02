mkdir -p reads
# data from SRA 
wget -nc -P reads/ ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR154/091/ERR15465491/ERR15465491.fastq.gz

mkdir -p reference
# reference genome from Ensembl Genomes (Fungi).
wget -P reference/ ftp://ftp.ensemblgenomes.org/pub/fungi/release-62/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz

# Unzip compressed file 
gunzip reference/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz
