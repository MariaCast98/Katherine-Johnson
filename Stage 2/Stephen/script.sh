## Download dataset
$ wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
$ wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
$ wget https://zenodo.org/records/10886725/files/Reference.fasta

## Quality Control
$ mkdir 01_QC
$ fastqc -o 01_QC ERR8774458_1.fastq.gz
$ fastqc -o 01_QC ERR8774458_2.fastq.gz

## Trimming
$ fastp --in1 ERR8774458_1.fastq --in2 ERR8774458_2.fastq --out1 read1_fastp.fq --out2 read2_fastp.fq

## Genome mapping
$ bwa index Reference.fasta
$ bwa mem Reference.fasta read1_fastp.fq read2_fastp.fq > aligned_reads.sam
$ samtools view -S -b aligned_reads.sam > aligned_reads.bam
$ samtools sort aligned_reads.bam -o aligned_reads_sorted.bam
$ samtools view aligned_reads_sorted.bam | less -S
$ samtools index aligned_reads_sorted.bam
$ samtools flagstat aligned_reads_sorted.bam

## Variant Calling
$ freebayes -f Refence.fasta aligned_reads_sorted.bam > variants.vcf
