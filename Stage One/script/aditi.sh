##TASK 1
mkdir aditi

cd ..

mkdir biocomputing && cd biocomputing

wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 

cd aditi && mv biocomputing/wildtype.fna .

cd ..

cd biocomputing

rm wildtype.gbk.1

cd ..
cd aditi
ls

grep -in "TATA" wildtype.fna

grep -in "TATATATA" wildtype.fna

#if its a mutant, then save these lines in another file 
nano mutants.txt
#pasted the above mutant sequence
or grep -in "TATATATA" wildtype.fna > mutants.txt

cat mutants.txt

curl https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/195/955/GCF_000195955.2_ASM19595v2/GCF_000195955.2_ASM19595v2_cds_from_genomic.fna.gz | gzip -d > prrA_gene.fna 

ls

cat prrA_gene.fna

ls
grep -in "TATATA" prrA_gene.fna

grep -c "^[ATCGN]" prrA_gene.fna
#55145

#to calculate the number of A,T,G,C
grep -o "A" prrA_gene.fna | wc -l
grep -o "C" prrA_gene.fna | wc -l
grep -o "T" prrA_gene.fna | wc -l
grep -o "G" prrA_gene.fna | wc -l

#% GC content
awk '!/^>/{gc+=gsub(/[gGcC]/,""); at+=gsub(/[aAtT]/,"");} END{ printf "%.2f%%\n", (gc*100)/(gc+at) }' prrA_gene.fna

touch aditi_nucleotide_file.txt

ls

# to add the number of A,C,T,G in a nucleotide_file.txt
echo "Number of C: $(grep -o 'C' prrA_gene.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of A: $(grep -o 'A' prrA_gene.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of T: $(grep -o 'T' prrA_gene.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of G: $(grep -o 'G' prrA_gene.fna | wc -l)" >> aditi_nucleotide_file.txt

cat aditi_nucleotide_file.txt

ls

##TASK 2
#installing misconduct on bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

#setting permission through chnod +x, allowing it to run as a prpgram
chmod +x Miniconda3-latest-Linux-x86_64.sh

#setting directory
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

#exporting its path into bashrc file
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc

conda --version

#activating bin
source ~/miniconda3/bin/activate

#activating conda base
conda activate

#creating new env using conda
conda create --name funtools

#installing figlet using channels in conda
conda install tsnyder::figlet

#write your name using figlet {yourname} command
figlet aditi 

#installing packages using bioconda channel
conda install -c bioconda bwa

conda install -c bioconda blast

conda install -c bioconda samtools

conda install -c bioconda bedrooms

conda install bioconda::spades 

conda install -c bioconda bcftools

conda install -c bioconda fastp 

conda install -c bioconda multiqc
