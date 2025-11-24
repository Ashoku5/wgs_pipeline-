# 🧬 Automated WGS Variant Calling Workflow with Snakemake 

This repository provides a fully automated Whole Genome Sequencing (WGS) variant-calling workflow developed using Snakemake with Conda environment management. The pipeline performs end-to-end analysis including quality control, read alignment, BAM processing, and variant calling using GATK HaplotypeCaller. It is designed for single-end sequencing datasets and automatically detects FASTQ samples and produces final merged VCF files containing SNPs and INDELs.

---

##  Pipeline Overview

| Step | Description |
|------|-------------|
| Sample Detection | Automatically collects `reads/{sample}.fastq.gz` |
| FastQC | Raw reads quality check |
| Alignment | Maps reads to reference genome using **Bowtie2** |
| Sorting | Sorts BAM files (*AMtools) |
| Mark Duplicates | GATK MarkDuplicates |
| Calling SNPs & INDELs | GATK HaplotypeCaller |
| Splitting | Generates separate SNP & INDEL VCFs |
| Merging | Final combined VCF per sample |



##  Requirements
| Tools Used |
|------|
| Snakemake | 
| Conda |
| FastQC |
| Bowtie2 |
| SAMtools| 
| GATK | 

###  **Running the Pipeline — Step by Step**

```bash
conda  create -n snakemake 
conda activate snakemake
conda install -c bioconda snakemake

**Steps**
1️⃣Prepare Input FASTQ Files
Place your sequencing files inside the reads/ directory:

reads/sample1.fastq.gz
reads/sample2.fastq.gz

2️⃣ Set the Reference Genome
Edit the reference path inside the Snakefile:
REF = "ref/genome.fa"

3️⃣ Execute the Workflow
Dry-run (preview without executing):
snakemake -np

Run with Conda environments enabled:
snakemake --use-conda --cores 6
