mkdir stage2\
  104  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  108  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
  110  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
  111  ls
  115  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
  116  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
  123  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  127  sudo apt install fastqc
  129  fastqc -o stage2 ERR8774458_1.fastq.gz
  130  fastqc -o stage2  ERR8774458_2.fastq.gz
  131  sudo apt install fastp
  132  fastp -i ERR8774458_1.fastq.gz -o trimmed_reads/trimmed_reads.fastq.gz
  133  fastqc -o stage trimmed_reads/trimmed_reads.fastq.gz
  134  fastqc -o stage2 trimmed_reads/trimmed_reads.fastq.gz
  135  sudo apt install samtools
  136  samtools faidx reference.fasta
  138  samtools reference.fasta
  139  samtools faidx reference.fasta
  140  sudo install faidx
  141  --help
  142  samtools faidx stage2 reference.fasta
  143  pwd
  145  samtools faidx reference.fasta
  147  sudo apt install bwa
  150  which reference.fasta
  151  bwa index reference.fasta
  152  ls
  153  cd stage2/
  158  mv --help
  159  mv -t reference.fasta
  161  cd stage2
  162  wget https://zenodo.org/records/10886725/files/Reference.fasta
  163  bwa index Reference.fasta
  164  bwa mem Reference.fasta read1_fastp.fq read2_fastp.fq > aligned_reads.sam
  165  bwa mem reference.fasta trimmed_reads/trimmed_reads.fastq.gz > alignment_results/aligned_reads.sam
  166  cd
  167  bwa mem reference.fasta trimmed_reads/trimmed_reads.fastq.gz > alignment_results/aligned_reads.sam
  168  ls
  169  cd stage2
  170  ls
  171  history
  172  samtools view -S -b aligned_reads.sam > aligned_reads.bam
  173  cd stage2
  174  samtools view -S -b aligned_reads.sam > aligned_reads.bam
  175  samtools view -bS alignment_results/aligned_reads.sam > alignment_results/aligned_reads.bam
  176  samtools sort alignment_results/aligned_reads.bam -o alignment_results/sorted_aligned_reads.bam
  177  samtools index alignment_results/sorted_aligned_reads.bam
  181  sudo apt install bcftools
  182  bcftools mpileup -Ou -f reference.fasta alignment_results/sorted_aligned_reads.bam | bcftools call -mv -o variant_calling/variants.vcf
  183  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  184  wget https://zenodo.org/records/10886725/files/Reference.fasta?
  185  bcftools mpileup -Ou -f reference.fasta alignment_results/sorted_aligned_reads.bam | bcftools call -mv -o variant_calling/variants.vcfbcftools mpileup -Ou -f reference.fasta alignment_results/sorted_aligned_reads.bam | bcftools call -mv -o variant_calling/variants.vcf
  187  history 
