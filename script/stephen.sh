## STAGE 1 - PROJECT 1: BAsh Basic

## 1. Login to your coding workspace
## 2. Create a folder titled your name
$ mkdir stephen.arcan


## 3. Create another new directory titled biocomputing and change to that directory with one line of command
$ mkdir biocomputing && cd $_


## 4. Download these 3 files:
## https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
## https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
## https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk


## 5. OH! You made a mistake. You have to move the .fna file to the folder titled your name directly. (Do this with one command. Hint: See our cheatsheet)
$ mv wildtype.fna ~/stephen.arcan/wildtype.fna


## 6. OH No! The gbk file is a duplicate, they are actually the same thing. Please delete it.
$ rm wildtype.gbk


## 7. The .fna file is actually from a bacteria, and it should definitely have a TATA (tata) box for initiating gene transcription. The molecular biologist is trying to understand the implication of dual TATA sequences. The files got mixed up and we are not sure which is wildtype and which is mutant. The mutant should have “tatatata” while the normal should have just “tata”. Can you confirm if the file is mutant or wild type
$ grep -o tatata wildtype.fna


## 8. If it is mutant, print all the lines that show it is a mutant into a new file
$  grep "tatata" wildtype.fna > mutant.fna


## 9. What is your favorite gene? (In any organism). Each team member should pick a unique gene different from every other person 
$ sh -c "$(curl -fsSL https://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh)"
$ export PATH=${HOME}/edirect:${PATH}
$ esearch -db nuccore -query "luxS Vibrio"          ## esearch will enable us download FASTA directly from NCBI using Linux commands


## 10. Download the fasta format of the gene from NCBI Nucleotide
$ esearch -db nucleotide -query AF305637.1 | efetch -format fasta > AF305637.1_luxS.fasta


## 11. How many lines are in the FASTA file (with the exception of the header)
$ grep -v ">" AF305637.1_luxS.fasta | wc -l


## 12. How many times does A occur
$ grep -v ">" AF305637.1_luxS.fasta | grep -o "A" | wc -l


## 13. How many times does G occur
$ grep -v ">" AF305637.1_luxS.fasta | grep -o "G" | wc -l


## 14. How many times does C occur
$ grep -v ">" AF305637.1_luxS.fasta | grep -o "C" | wc -l


## 15. How many times does T occur
$ grep -v ">" AF305637.1_luxS.fasta | grep -o "T" | wc -l


## 16. Calculate the %GC content of your gene
$ sudo apt install bc           ## bc allows us to perform arithmethic operations
$ gc=$(grep -v ">" AF305637.1_luxS.fasta | grep -o '[GC]' | wc -l)
total=$(grep -v ">" AF305637.1_luxS.fasta | grep -o '[ATGC]' | wc -l)
echo "scale=2; ($gc / $total) * 100" | bc | sed 's/$/%/'


## 17. Create a nucleotide file title your name
$ nano stephen.fa


## 18. “echo” the following into the file using >>: the number of A, G, T and C in the file you created above.
$ echo "Total count of A: $(grep -v ">" AF305637.1_luxS.fasta | grep -o "A" | wc -l)" >> stephen.fa
$ echo "Total count of G: $(grep -v ">" AF305637.1_luxS.fasta | grep -o "G" | wc -l)" >> stephen.fa
$ echo "Total count of T: $(grep -v ">" AF305637.1_luxS.fasta | grep -o "T" | wc -l)" >> stephen.fa
$ echo "Total count of C: $(grep -v ">" AF305637.1_luxS.fasta | grep -o "C" | wc -l)" >> stephen.fa

## 19. Upload the file to your team’s github repo in a folder called /output
https://github.com/MariaCast98/Katherine-Johnson/tree/main/output


## 20. Save all the codes you have used in this project in a file named yourname.sh Upload all the codes you have used to your team’s github repo in a folder called /script
https://github.com/MariaCast98/Katherine-Johnson/tree/main/script


## 21. Clear your terminal space and print all the commands you have used today.
$ clear


## 22. List the files in the two folders and share a screenshot of your terminal below 
$ cd 
$ cd ~/stephen.arcan
$ ls
$ cd ~/biocomputing
$ ls

## STAGE 2 - PROJECT 2: Installing Bioinformatics Softwares on the terminal
