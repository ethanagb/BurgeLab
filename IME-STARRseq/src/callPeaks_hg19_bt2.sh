#!/bin/sh
#SBATCH -n 8
#SBATCH -t 11:59:00
#SBATCH --mem-per-cpu=16384
#SBATCH -J callPeaks # sensible name for the job
#SBATCH --output=/home/eagb/logs/callPeaks.out
#SBATCH --mail-user=eagb@mit.edu
#SBATCH --mail-type=ALL
#SBATCH -p newnodes

export PYTHONPATH=/home/eagb/.local/lib/python2.7/site-packages:$PYTHONPATH
export LD_LIBRARY_PATH=/usr/lib64/libpython2.7.so.1.0:$LD_LIBRARY_PATH

/home/eagb/.local/bin/macs2 callpeak -t /home/eagb/storage/data/analyzed/alignment/hg19/SRR3622812_hg19_bt2_NoDups_09Feb2018 -n SRR3622812_hg19_bt2_09Feb2018 --outdir /home/eagb/IME-STARRseq/results/peakCalling/hg19_bt2 -f BAM -q 0.05
