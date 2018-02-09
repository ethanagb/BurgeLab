#!/bin/sh
#SBATCH -n 8
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J sortBam # sensible name for the job
#SBATCH --output=/home/eagb/logs/sortBam.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load Modules

module load engaging/samtools/1.3.1

#Sort

samtools sort -o /home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_sort_09Feb2018.bam --threads 8 -O BAM /home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_09Feb2018.bam