# data from SRA 
wget -nc ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR154/091/ERR15465491/ERR15465491.fastq.gz

# reference genome from Ensembl Genomes (Fungi).
wget  ftp://ftp.ensemblgenomes.org/pub/fungi/release-62/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz

# Unzip compressed file 
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz
