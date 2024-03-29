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
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  451  sh Miniconda3-latest-Linux-x86_64.sh
  452  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
  453  ls
  454  ls Miniconda3-latest-MacOSX-x86_64.sh
  455  sh Miniconda3-latest-MacOSX-x86_64.sh
  456  conda create -n env1
  457  conda install -c bioconda star
  458  conda install bioconda::star
  459  bash <conda-installer-name>-latest-MacOSX-x86_64.s
  460  bash <conda-installer-name>-latest-MacOSX-x86_64.sh
  461  ls miniconda3/
  462  nano~/.bashrc
  463  exit
  464  conda info
  465  shasum -a 256 miniconda3
  466  -a
  467  cd dir
  468  cd miniconda3
  469  conda info
  470  ls
  471  conda list
  472  conda install
  473  ~/miniconda3/bin/conda init zsh
  474  ~/miniconda3/bin/conda init bash
  475  exit
  476  conda install - bioconda star^C
  477  conda install -c bioconda star
  478  clear
  479  star --help
  480  STAR --help
  481  conda deactivate
  482  STAR --help
  483   conda info
  484  conda list
  485  conda env list
  486  conda create --funtools
  487  conda create --funtools ENV 
  488  conda create --name funtools
  489  conda activate funtools
  490  conda install Figlet
  491  conda install tsnyder::figlet
  492  figlet{Aishatu}
  494  figlet {aishatu}
  495  conda install tsnyder -c figlet
  496  figlet{aishatu}
  497  conda install bwa
  498  conda install bioconda/label/cf201901::bwa
  499  conda install bioconda/label/cf201901::blast
  500  conda install bioconda/label/cf201901::samtools
  501  conda install bioconda/label/cf201901::bedtools
  502  conda install bioconda/label/cf201901::spades
  503  conda install agbiome::spades
  504  conda install bioconda/label/cf201901::bcftools
  505  conda install bioconda/label/figlet
  506  conda install bioconda/label/cf201901::fastp
  507  conda install bioconda/label/cf201901::multiqc
  508  history
(funtools) MalamideMacBook:~ malami$ 
