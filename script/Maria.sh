#to create a folder with my name
mkdir Maria

#to create a new directory and enter there
mkdir biocomputing && cd biocomputing

#to download the files
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

#to move one of the files to the folder of my name
mv wildtype.fna ~/Maria

#to delete one of the gbk files
rm wildtype.gbk.1

# to search "tatatata" to see if is mutant
grep "tatatata" wildtype.fna

#to extract the lines that shows it is mutant
grep -F "tatatata" wildtype.fna > filtered_wildtype.fna

#to download the cutRS fasta from NCBI Nucleotide
curl -s "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=1279724&db=nuccore&report=fasta&retmode=text&withmarkup=on&tool=portal&log$=seqview&maxdownloadsize=100000000" > cutRS.fasta

#to see the number of lines without the header
wc -l cutRS.fasta | awk '{print $1-1}'

#to see the number of ocurrences of A
grep -o -i A cutRS.fasta | wc -l

#to see the number of ocurrences of G
grep -o -i G cutRS.fasta | wc -l

#to see the number of ocurrences of C
grep -o -i C cutRS.fasta | wc -l

#to see the number of ocurrences of T
grep -o -i T cutRS.fasta | wc -l

#to calculate the %GC
awk '!/^>/{gc+=gsub(/[gGcC]/,""); at+=gsub(/[aAtT]/,"");} END{ printf "%.2f%%\n", (gc*100)/(gc+at) }' cutRS.fasta

#to create a new file for the number of nucleotides
touch Maria.fasta

#to add the number of nucleotides in the file
echo "Number of A: $(grep -o -i A cutRS.fasta | wc -l)" >> Maria.fasta
echo "Number of G: $(grep -o -i G cutRS.fasta | wc -l)" >> Maria.fasta
echo "Number of T: $(grep -o -i T cutRS.fasta | wc -l)" >> Maria.fasta
echo "Number of C: $(grep -o -i C cutRS.fasta | wc -l)" >> Maria.fasta

#clear your screen
clear

#see the commands used
history
