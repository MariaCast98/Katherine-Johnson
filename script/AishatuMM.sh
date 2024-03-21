4  mkdir AISHATUMM
   55  rm -r biocomputing
   56  mkdir biocomputing
   57  mkdir biocomputing && cd biocomputing
   58  cd biocomputing
   59  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
   60  mv wildtype.fna ../AishatuMM
   61  ls
   62  rm wildtype.gbk.1
   63  cd AISHATUMM grep && -o 'tatatata\|tata' wildtype.fna
   64  grep -n 'tatatata' wildtype.fna > mutant_lines.txt
   65  my favorite gene is glycoprotein precursor (GPC) gene
   66  wget -O sequence.fasta "https://www.ncbi.nlm.nih.gov/nuccore/MH157044.1?report=fasta"
   67  grep -v "^>" sequence.fasta | wc -l
   68  grep -o -i "A" sequence.fasta | wc -l
   69  grep -o -i "G" sequence.fasta | wc -l
   70  grep -o -i "C" sequence.fasta | wc -l
   71  grep -o -i "T" sequence.fasta | wc -l
   72  echo "scale=2; ($(grep -o -i 'G' sequence.fasta | wc -l) + $(grep -o -i 'C' sequence.fasta | wc -l)) / $(grep -o -i '[ACGT]' sequence.fasta | wc -l) * 100" | bc
   74  echo "scale=2; ($(grep -o -i 'G' sequence.fasta | wc -l) + $(grep -o -i 'C' sequence.fasta | wc -l)) / $(grep -o -i '[ACGT]' sequence.fasta | wc -l) * 100" | bc
   75  nano AishatuMM.fasta
   76  touch AishatuMM.fasta
   77  ls
   78  echo "Counts of nucleotides in sequence.fasta:" >> AishatuMM.fasta
   79  echo "A: $(grep -o -i 'A' sequence.fasta | wc -l)" >> AishatuMM.fasta
   80  echo "G: $(grep -o -i 'G' sequence.fasta | wc -l)" >> AishatuMM.fasta
   81  echo "T: $(grep -o -i 'T' sequence.fasta | wc -l)" >> AishatuMM.fasta
   82  echo "C: $(grep -o -i 'C' sequence.fasta | wc -l)" >> AishatuMM.fasta
   83  "Counts of nucleotides in sequence.fasta:" >> AishatuMM.fasta
   84  cat AishatuMM.fasta
   85  history
