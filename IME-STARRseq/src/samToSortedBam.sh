#!/bin/sh
#SBATCH -n 8
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J bamConvert # sensible name for the job
#SBATCH --output=/home/eagb/logs/bamConvert.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load Modules

module load engaging/samtools/1.3.1

#Convert sam to bam 
samtools view -S -b  /home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_08Feb2018.sam > /home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_08Feb2018.bam
