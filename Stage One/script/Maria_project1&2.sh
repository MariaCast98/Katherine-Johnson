# Project 1
#to create a folder with my name
$mkdir Maria

#to create a new directory and enter there
$mkdir biocomputing && cd biocomputing

#to download the files
$wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

#to move one of the files to the folder of my name
$mv wildtype.fna ~/Maria

#to delete one of the gbk files
$rm wildtype.gbk.1

# to search "tatatata" to see if is mutant
$grep "tatatata" wildtype.fna

#to extract the lines that shows it is mutant
$grep -F "tatatata" wildtype.fna > filtered_wildtype.fna

#to download the cutRS fasta from NCBI Nucleotide
$curl -s "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=1279724&db=nuccore&report=fasta&retmode=text&withmarkup=on&tool=portal&log$=seqview&maxdownloadsize=100000000" > cutRS.fasta

#to see the number of lines without the header
$wc -l cutRS.fasta | awk '{print $1-1}'

#to see the number of ocurrences of A
$grep -o -i A cutRS.fasta | wc -l

#to see the number of ocurrences of G
$grep -o -i G cutRS.fasta | wc -l

#to see the number of ocurrences of C
$grep -o -i C cutRS.fasta | wc -l

#to see the number of ocurrences of T
$grep -o -i T cutRS.fasta | wc -l

#to calculate the %GC
$awk '!/^>/{gc+=gsub(/[gGcC]/,""); at+=gsub(/[aAtT]/,"");} END{ printf "%.2f%%\n", (gc*100)/(gc+at) }' cutRS.fasta

#to create a new file for the number of nucleotides
$touch Maria.fasta

#to add the number of nucleotides in the file
$echo "Number of A: $(grep -o -i A cutRS.fasta | wc -l)" >> Maria.fasta
$echo "Number of G: $(grep -o -i G cutRS.fasta | wc -l)" >> Maria.fasta
$echo "Number of T: $(grep -o -i T cutRS.fasta | wc -l)" >> Maria.fasta
$echo "Number of C: $(grep -o -i C cutRS.fasta | wc -l)" >> Maria.fasta

# Upload the file to your team’s github repo in a folder called /output
https://github.com/MariaCast98/Katherine-Johnson/tree/main/output

## Upload the codes in a file named yourname.sh in a folder called script
https://github.com/MariaCast98/Katherine-Johnson/tree/main/script

#to clear my screen
$clear

#to see the commands used
$history

## to list the files in the two folders and share a screenshot of your terminal below 
$ls ~/output/ ~/script/


# Project 2

#Activate your base conda environment
$wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
$sh Miniconda3-latest-Linux-x86_64.sh 
$which conda
$ls miniconda3/
$nano ~/.bashrc
#edit the file at the end and write: export PATH=”/home/maria_castaneda5/miniconda3/bin:$PATH”
#save the changes
$source ~/.bashrc
$which conda
$conda init
$conda activate


#Create a conda environment names funtools
$conda create -n funtools

#Activate the funtools environment
$conda activate funtools

#Install Figlet using conda
$conda install tsnyder::figlet

#Run the following command figlet {your name}. Put a screenshot of what you see below 😀
$figlet Maria

#Install bwa through the bioconda channel
$conda install bioconda::bwa

#Install blast through the bioconda channel
$conda install bioconda::blast

#Install samtools through the bioconda channel
$conda install bioconda::samtools

#Install bedtools through the bioconda channel
$conda install bioconda::bedtools

#Install spades.py through the bioconda channel
$conda install bioconda::spades

#Install bcftools through the bioconda channel
$conda install bioconda::bcftools

#Install fastp through the bioconda channel
$conda install bioconda::fastp

#Install multiqc through the bioconda channel
$ conda config --add channels defaults
$ conda config --add channels bioconda
$ conda config --add channels conda-forge
$ conda config --set channel_priority strict
$ conda install multiqc
