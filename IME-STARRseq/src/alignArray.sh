#!/bin/sh
#SBATCH --job-name=alignAray
#SBATCH --output=/home/eagb/logs/_%A_%a.out
#SBATCH --error=/home/eagb/logs/alignArray_%A_%a.err
#SBATCH --array=1-248
#SBATCH --time=11:59:59
#SBATCH --partition=newnodes
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16324
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL

######################
# Begin work section #
######################

# Print this sub-job's task ID
echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID

# Do some work based on the SLURM_ARRAY_TASK_ID
FILEKEY=`cat /home/eagb/storage/data/raw/replicate2/split/keys.txt | head -$SLURM_ARRAY_TASK_ID | tail -1`
PAIR1="/home/eagb/storage/data/raw/replicate2/split/SRR3622813_1_split_${FILEKEY}.fq"
PAIR2="/home/eagb/storage/data/raw/replicate2/split/SRR3622813_2_split_${FILEKEY}.fq"
OUTNAME="/home/eagb/storage/data/analyzed/rep2/splitAlignments/SRR3622813_split_hg19_bt2_${FILEKEY}.sam"

echo $FILEKEY
echo $PAIR1
echo $PAIR2
echo $OUTNAME
#Load modules
module load engaging/bowtie2/2.2.6 

#Alignment

bowtie2 -x /home/eagb/ref/genomes/hg19/bowtie2Index/hg19 -p 16 -1 $PAIR1 -2 $PAIR2 -S $OUTNAME --very-fast