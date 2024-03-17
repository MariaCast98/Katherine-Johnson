$ mkdir Houda 

$ mkdir biocomputing && cd biocomputing 

$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 

$ mv wildtype.fna ~/houda/ 

$ rm wildtype.gbk.1

$ grep -o -c "tatatata" wildtype.fna  

$ grep "tatatata" wildtype.fna > mutant.txt

$ wget "https://www.ensembl.org/Homo_sapiens/Gene/Sequence?db=core;g=ENSG00000012048;r=17:43044295-43170245"

$ grep -v "^>" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l

$ grep -o "A" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_A :/'
$ grep -o "G" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_G :/'
$ grep -o "C" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_C :/'
$ grep -o "T" Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l | sed 's/^/count_T :/'

$ echo "% GC = $(awk 'BEGIN {C='"$(grep -o "C" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; G='"$(grep -o "G" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; A='"$(grep -o "A" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; T='"$(grep -o "T" Sequence?db=core\;g=ENSG00000012048\;r=17:43044295-43170245 | wc -l)"'; if ((A + T + C + G) > 0) printf "%.2f\n", ((C + G) * 100) / (A + T + C + G); else print "Error: Division by zero"}')%"

$ touch Houda_nucleotide.txt

$ echo "Number of C = $(grep -o 'C' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt 
$ echo "Number of G = $(grep -o 'G' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt
$ echo "Number of T = $(grep -o 'T' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt
$ echo "Number of A = $(grep -o 'A' Sequence\?db\=core\;g\=ENSG00000012048\;r\=17\:43044295-43170245 | wc -l)" >> Houda_nucleotide.txt
