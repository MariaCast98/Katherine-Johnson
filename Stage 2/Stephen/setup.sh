##FastQC
$ sudo apt install fastqc

## Install fastp 
$ conda install -c bioconda fastp

## Install bwa 
$ conda install -c bioconda bwa

## Install samtools
$ conda create -n samtools
$ conda activate samtools
$ conda config --add channels bioconda
$ conda config --add channels conda-forge
$ conda install -c bioconda samtools

## Freebayes
$ sudo apt install freebayes
