#!/bin/sh
#SBATCH -n 64
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J hg19_bt_align # sensible name for the job
#SBATCH --output=/home/eagb/logs/hg19_bt_align.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load modules
module load engaging/bowtie/1.1.1 

#Alignment

bowtie /home/eagb/ref/genomes/hg19/bowtieIndex/downloaded/hg19 -p 64 -m 2 -1 /home/eagb/storage/data/raw/replicate2/SRR3622813_1.fastq -2 /home/eagb/storage/data/raw/replicate2/SRR3622813_2.fastq -S /pool001/eagb/data/analyzed/alignment/hg19/SRR3622813_hg19_bt_12Feb2018.sam

