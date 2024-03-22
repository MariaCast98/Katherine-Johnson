## 1. Activate your base conda environment

$ conda activate base

## 2. Create a conda environment named funtools

$ conda create -n funtools

## 3. Activate the funtools environment
$ conda activate funtools

## 4. Install Figlet using conda
$ conda install tsnyder::figlet

## 5. Run the following command figlet {your name}. Put a screenshot of what you see below


## 6. Install bwa through the bioconda channel
$ conda install -c bioconda bwa

## 7. Install BLAST through the bioconda channel
$ conda install -c bioconda blast


## 8. Install samtools through the bioconda channel
$ conda create -n samtools
$ conda activate samtools
$ conda config --add channels bioconda
$ conda config --add channels conda-forge
$ conda install -c bioconda samtools

## 9. Install bedtools through the bioconda channel
$ conda install -c bioconda bedtools

## 10. Install spades.py through the bioconda channel
$ conda install -c bioconda spades

## 11. Install bcftools through the bioconda channel
$ conda install -c bioconda bcftools

## 12. Install fastp through the bioconda channel
$ conda install -c bioconda fastp

## 13. Install multiqc through the bioconda channel
$ conda install -c bioconda multiqc
