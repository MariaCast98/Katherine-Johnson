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
or grep -n "TATATATA" wildtype.fna > mutants.txt

cat mutants.txt

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/195/955/GCF_000195955.2_ASM19595v2/GCF_000195955.2_ASM19595v2_genomic.fna.gz

gunzip GCF_000195955.2_ASM19595v2_genomic.fna.gz

grep -A 1000 "NC_000962.3" GCF_000195955.2_ASM19595v2_genomic.fna | grep -v "^--" > prrA.fna 

ls

cat prrA.fna

ls
grep -in "TATATA" prrA.fna

(only one line has it)

grep -c "^[ATCGN]" prrA.fna

#to calculate the number of A,T,G,C
grep -o "A" prrA.fna | wc -l
grep -o "C" prrA.fna | wc -l
grep -o "T" prrA.fna | wc -l
grep -o "G" prrA.fna | wc -l

#% GC content
awk '!/^>/{gc+=gsub(/[gGcC]/,""); at+=gsub(/[aAtT]/,"");} END{ printf "%.2f%%\n", (gc*100)/(gc+at) }' prrA.fna

touch aditi_nucleotide_file.txt

ls

# to add the number of A,C,T,G in a nucleotide_file.txt
echo "Number of C: $(grep -o 'C' prrA.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of A: $(grep -o 'A' prrA.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of T: $(grep -o 'T' prrA.fna | wc -l)" >> aditi_nucleotide_file.txt
echo "Number of G: $(grep -o 'G' prrA.fna | wc -l)" >> aditi_nucleotide_file.txt

cat aditi_nucleotide_file.txt

ls

