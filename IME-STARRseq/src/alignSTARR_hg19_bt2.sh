#!/bin/sh
#SBATCH -n 8
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J hg19_bt2_align # sensible name for the job
#SBATCH --output=/home/eagb/logs/hg19_bt2_align.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load modules
module load engaging/bowtie2/2.2.6 

#Alignment

bowtie2 -x /home/eagb/ref/genomes/hg19/bowtie2Index/hg19 -1 /pool001/eagb/data/analyzed/SRR3622812_1.fastq -2 /pool001/eagb/data/analyzed/SRR3622812_2.fastq -S /pool001/eagb/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_08Feb2018.sam
