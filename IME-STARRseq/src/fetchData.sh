#!/bin/sh
#SBATCH -n 16           # 16 cores
#SBATCH -t 1-03:00:00   # 1 day and 3 hours
#SBATCH -J fetchSRA # sensible name for the job

#Load the required modules
module load engaging/sratoolkit/2.8.2

#Set the working dir
cd /home/eagb/IME-STARRseq/data/raw/WHG-STARR

#Fetch the data
prefetch SRR3622812
mv /home/eagb/ncbi/public/sra/SRR3622812.sra .

#duplicate into the analysis dir and archive the original
cp /home/eagb/IME-STARRseq/data/analyzed/WHG-STARR/SRR3622812.sra /home/eagb/IME-STARRseq/data/analyzed/WHG-STARR/
gzip SRR3622812.sra
