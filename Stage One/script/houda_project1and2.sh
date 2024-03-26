# Project_1 
#Create a folder titled your name
$ mkdir Houda 

#Create another new directory titled biocomputing and change to that directory with one line of command
$ mkdir biocomputing && cd biocomputing 

#Download these 3 files :
$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 

#OH! You made a mistake. You have to move the .fna file to the folder titled your name directly.
$ mv wildtype.fna ~/houda/ 

#OH No! The gbk file is a duplicate, they are actually the same thing. Please delete it.
$ rm wildtype.gbk.1

#Can you confirm if the file is mutant or wild type
$ grep -o -c "tatatata" wildtype.fna  

#If it is mutant, print all the lines that show it is a mutant into a new file
$ grep "tatatata" wildtype.fna > mutant.txt

#Download the fasta format of the gene from NCBI Nucleotide
$ wget "https://www.ensembl.org/Homo_sapiens/Gene/Sequence?db=core;g=ENSG00000012048;r=17:43044295-43170245"

#How many lines are in the FASTA file (with the exception of the header)
$ grep -v "^>" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l

#How many times does A, G, C and T occur
$ grep -o "A" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_A :/'
$ grep -o "G" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_G :/'
$ grep -o "C" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_C :/'
$ grep -o "T" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_T :/'

#Calculate the %GC content of your gene
$ echo "% GC = $(awk 'BEGIN {C='"$(grep -o "C" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; G='"$(grep -o "G" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; A='"$(grep -o "A" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; T='"$(grep -o "T" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; if ((A + T + C + G) > 0) printf "%.2f\n", ((C + G) * 100) / (A + T + C + G); else print "Error: Division by zero"}')%"

#Create a nucleotide file title your name
$ touch Houda_nucleotide.txt

#“echo” the following into the file using >>
$ echo "Number of C = $(grep -o 'C' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt 
$ echo "Number of G = $(grep -o 'G' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt
$ echo "Number of T = $(grep -o 'T' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt
$ echo "Number of A = $(grep -o 'A' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt


# Project_2
#Activate your base conda environment
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
$ sh Miniconda3-latest-Linux-x86_64.sh 
$ which conda
$ source /home/boulaareshouda13/miniconda3/bin/activate base

#Create a conda environment names funtools
 $ conda create --name funtools

 #Activate the funtools environment
 $ conda activate funtools

 #Install Figlet using conda
 $ conda install tsnyder::figlet

 #Run the following command figlet {your name}. Put a screenshot of what you see below
 $ figlet Houda

 #Install bwa through the bioconda channel
 $ conda install -n funtools -c bioconda bwa

 #Install blast through the bioconda channel
 $ conda install -n funtools -c bioconda blast

 #Install samtools through the bioconda channel
 $ conda install -n funtools -c bioconda samtools

 #Install bedtools through the bioconda channel
 $ conda install -n funtools -c bioconda bedtools

 #Install spades.py through the bioconda channel
 $ conda install -n funtools -c bioconda spades

 #Install bcftools through the bioconda channel
 $ conda install -n funtools -c bioconda bcftools

 #Install fastp through the bioconda channel
 $ conda install -n funtools -c bioconda fastp

 #Install multiqc through the bioconda channel
 $ conda create -n multiqc_env python=3.4 -c conda-forge
 $ conda activate multiqc_env
 $ conda install -c bioconda multiqc

