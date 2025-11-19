# Whole Genome Sequencing (WGS) Pipeline****

This is a fully automated Whole Genome Sequencing (WGS) workflow built using Snakemake and Conda.
It performs quality control, trimming, alignment, BAM processing, and variant calling with GATK HaplotypeCaller.
The pipeline supports Saccharomyces cerevisiae, Schizosaccharomyces pombe, or any custom reference genome.

The final output contains SNPs and Indels per sample in the form of merged VCFs.

# Input Files
1. FASTQ files

Place sequencing reads inside:

reads/{sample}.fastq.gz


The pipeline automatically detects sample names.

2. Reference genome
Place the reference FASTA file as:
   reference/genome.fa

 ****Required indexes
The pipeline will automatically generate:
   Bowtie2 index files
Stored as:
reference/genome.1.bt2
reference/genome.2.bt2
reference/genome.3.bt2
reference/genome.4.bt2
reference/genome.rev.1.bt2
reference/genome.rev.2.bt2

GATK / Samtools index files
Also created automatically:

reference/genome.fa.fai        (samtools index),
reference/genome.dict          (GATK dictionary)
