#!/bin/sh
#SBATCH -n 6           # 16 cores
#SBATCH -t 11:59:00   # 1 day and 3 hours
#SBATCH --mem-per-cpu=16384
#SBATCH -J hg19Index # sensible name for the job
#SBATCH --output=/home/eagb/hg19Index.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

#Load modules
module load engaging/bowtie2/2.2.6

bowtie2-build -p /home/eagb/ref/genomes/hg19/hg19.fa /home/eagb/ref/genomes/hg19/bowtie2Index/hg19


