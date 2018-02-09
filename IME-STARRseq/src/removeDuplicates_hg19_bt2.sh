#!/bin/sh
#SBATCH -n 8
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J hg19_bt2_remDups # sensible name for the job
#SBATCH --output=/home/eagb/logs/hg19_bt2_remDups.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

java -jar /home/eagb/software/picard.jar MarkDuplicates I=/home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_sort_09Feb2018.bam REMOVE_DUPLICATES=true O=/home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_NoDups_09Feb2018.bam M=/home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_RemovalMetrics.txt
