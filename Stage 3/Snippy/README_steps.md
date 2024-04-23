Please update your results of snippy :)
#Script:
$snippy --outdir ERR9516360_snippy_output --reference GCF_008727535.1_ASM872753v1_genomic.fna --peil ERR9516360.fastq.gz --cpus 16

# Generate the report (not neccesary)
$ cd ERR9516360_snippy_output

$ ls

$ snippy-vcf_report --html --cpus 16 --auto > snps.report.html

# Generate core SNP alignments:
$ snippy-core ERR9516360_snippy_output --ref ERR9516360_snippy_output/reference/ref.fa

# Cleaning the alignment, remove all the "weird" characters and replace them with N using the included snippy-clean_full_aln. This is useful when you need to pass it to a tree-building or recombination-removal tool:
$ snippy-clean_full_aln core.full.aln > yourSRRcode.clean.full.aln
