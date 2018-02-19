#!/bin/sh
#SBATCH --job-name=alignAray
#SBATCH --output=/home/eagb/logs/_%A_%a.out
#SBATCH --error=/home/eagb/logs/alignArray_%A_%a.err
#SBATCH --array=1-248
#SBATCH --time=11:59:59
#SBATCH --partition=newnodes
#SBATCH --ntasks=4
#SBATCH --mem-per-cpu=8192
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL

#Load Modules

module load engaging/samtools/1.3.1

# Print this sub-job's task ID
echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID

X=$SLURM_ARRAY_TASK_ID
# Do some work based on the SLURM_ARRAY_TASK_ID
FILEKEY=`cat /home/eagb/storage/data/analyzed/rep2/splitAlignments/keys.txt | head -$X | tail -1`
INNAME="/home/eagb/storage/data/analyzed/rep2/splitAlignments/SRR3622813_split_hg19_bt2_${FILEKEY}.sam"
OUTNAME="/home/eagb/storage/data/analyzed/rep2/splitAlignments/SRR3622813_split_hg19_bt2_${FILEKEY}.bam"
SORTOUT="/home/eagb/storage/data/analyzed/rep2/splitAlignments/SRR3622813_split_hg19_bt2_sort_${FILEKEY}.bam"

echo $FILEKEY
echo $INNAME
echo $OUTNAME
echo $SORTOUT

#Convert sam to bam 
samtools view -Sb  $INNAME > $OUTNAME
samtools sort -o $SORTOUT --threads 4 -O BAM $OUTNAME
gzip $OUTNAME