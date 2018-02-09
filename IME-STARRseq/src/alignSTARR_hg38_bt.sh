#!/bin/sh
#SBATCH -n 32
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J hg38_bt_align # sensible name for the job
#SBATCH --output=/home/eagb/logs/hg38_bt_align.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load modules
module load engaging/bowtie/1.1.1 

#Alignment

bowtie  /home/eagb/ref/genomes/hg38/bowtieIndex/downloaded/GRCh38 -p 32 -m 2 -1 /pool001/eagb/data/analyzed/SRR3622812_1.fastq -2 /pool001/eagb/data/analyzed/SRR3622812_2.fastq -S /pool001/eagb/data/analyzed/alignment/hg38/SRR3622812_hg38_bt_09Feb2018.sam

