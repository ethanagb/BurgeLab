##Description of Scripts

`fetchData.sh` outlines the commands used to download the Liu et.al. 2017 dataset from SRA on 8 Feb 2018. 

`indexHg19.sh` and `indexHg38.sh` generate bowtie2 indexes of the hg19 and hg38 genomes respectively. 

`indexHg19_bowtie.sh` and `indexHg38_bowtie.sh` generate bowtie indexes of the hg19 and hg38 genomes respectively.

`alignSTARR_hg19_bt2.sh` and `alignSTARR_hg38_bt2.sh` are parallelized scripts to align STARRseq reads from Liu et. al. 2017 to hg19 and hg38 w/ bowtie2 (not used in their paper)

`alignSTARR_hg19_bt.sh` `alignSTARR_hg38_bt.sh` are parallelized scripts to align STARRseq reads from Liu et. al. 2017 to hg19 and hg38 w/ bowtie (bowtie + hg19 used in their paper)