#Download dataset 
wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1 
wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1 

#Quality Control (FastQC) 
sudo apt insatll fastqc 
mv 'ERR8774458_1.fastq.gz?download=1' ERR8774458_1.fastq.gz
mv 'ERR8774458_2.fastq.gz?download=1' ERR8774458_2.fastq.gz
gunzip ERR8774458_1.fastq.gz
gunzip ERR8774458_2.fastq.gz
fastqc ERR8774458_1.fastq
fastqc ERR8774458_2.fastq

#Trimming (FastP)
sudo apt install fastp
fastp -i ERR8774458_1.fastq -o trimmed_ERR8774458_1.fastq
fastp -i ERR8774458_2.fastq -o trimmed_ERR8774458_2.fastq

#Genome Mapping (bwa)
sudo apt install bwa 
mv 'Reference.fasta?download=1' Reference.fasta
bwa index Reference.fasta
bwa mem Reference.fasta trimmed_ERR8774458_1.fastq trimmed_ERR8774458_2.fastq > alignement.sam
sudo apt install samtools
samtools view -bS alignement.sam > alignement.bam
samtools sort alignement.bam -o alignement.sorted.bam

#Variant Calling
sudo apt install bcftools 
bcftools mpileup -f Reference.fasta alignement.sorted.bam -o sample.bcf 
bcftools call -mv -Ov -o variants_sample.vcf sample.bcf
