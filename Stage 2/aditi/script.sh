mkdir variant-calling
ls
cd variant-calling
mkdir fastq
mkdir ref
ls
wget -P fastq https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
wget -P fastq https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
ls fastq
wget -P ref https://zenodo.org/records/10886725/files/Reference.fasta
ls ref
gunzip fastq/ERR8774458_2.fastq.gz fastq/ERR8774458_1.fastq.gz
ls fastq
sudo apt-get install fastqc multiqc
fastqc fastq/ERR8774458_2.fastq -o fastq
ls fastq
fastqc fastq/ERR8774458_1.fastq -o fastq
ls
ls fastq
sudo apt-get install fastp
fastp -i fastq/ERR8774458_2.fastq -o fastq/read2.fastq
fastp -i fastq/ERR8774458_1.fastq -o fastq/read1.fastq
ls fastq
sudo apt-get install bwa
sudo apt-get install bcftools
sudo apt-get install samtools
bwa
ls ref
bwa mem ref/Reference.fasta fastq/read1.fastq fastq/read1.fastq > output.sam
ls
samtools view -S -b output.sam > output.bam
samtools sort -o output.sorted.bam output.bam
ls
samtools flagstat output.sorted.bam
#variant Calling
bcftools
mkdir bcf
bcftools mpileup -O b -o bcf/ERR8774458_raw.bcf -f ref/Reference.fasta output.sorted.bam
ls 
ls bcf
mkdir vcf
bcftools call --ploidy 1 -m -v -o vcf/ERR8774458_variants.vcf bcf/ERR8774458_raw.bcf
ls
ls vcf
vcfutils.pl
vcfutils.pl varFilter vcf/ERR8774458_variants.vcf > vcf/ERR8774458_final_variants.vcf
ls vcf
less -S vcf/ERR8774458_final_variants.vcf
bcftools view bcf/ERR8774458_raw.bcf
ls