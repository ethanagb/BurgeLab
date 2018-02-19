import pandas as pd
import numpy as np 
from scipy import stats, integrate
import matplotlib.pyplot as plt
import seaborn as sns
#import pybedtools

peaks = pd.read_csv('GSE82204_enhancer_UniquePositions.txt', sep = '\t', header=None)
peaks.columns = ['chr','start','end']

introns = pd.read_csv('UCSC_Intron_Positions.bed', sep='\t', header=None)
introns.columns = ['chr','start','end']
introns['length'] = introns['end']-introns['start']

#intronsWithEnhancer = pd.read_csv('UCSC_Introns_w_Enhancer_Freq.txt', sep = '\t', header=None)
#intronsWithEnhancer.columns = ['freq','chr','start','end']

introns = pd.read_csv('UCSC_Intron_Positions.bed', sep = '\t',header = None)
introns.columns = ['chr', 'start','end']
introns['length'] = introns['end'] - introns['start']

#intronsWithEnhancer['length'] = intronsWithEnhancer['end'] - intronsWithEnhancer['start']
peaks['center'] = (peaks['start'] + peaks['end'])/2.0
chroms = ['chr1', 'chr2', 'chr3', 'chr4', 'chr5', 'chr6', 'chr7', 'chr8', 'chr9', 'chr10', 'chr11', 'chr12', 'chr13', 'chr14', 'chr15', 'chr16', 'chr17', 'chr18', 'chr18','chr19','chr20', 'chr21','chr22', 'chrX', 'chrY']

with open('EnhancerPeaks_PercentDownIntron.txt', 'w+') as outfile:
    outfile.write('chr\tfreq\tstart\tend\tPercentDownIntron\n')
    for c in chroms:
        print("Processing chromosome " + str(c))
        chrDf = peaks.loc[peaks['chr'] == c] #extract the enhancer peaks from just one chromosome.
        outDf = pd.DataFrame(columns=['freq','start','end','length', 'PercentDownIntron'])
        for index,row in chrDf.iterrows():
            center = row['center']
            x = introns.loc[(introns['start'] <= center)] #filter down to introns that encompass the center of enhancer
            y = x.loc[x['end'] >= center]
            z = y.loc[y['chr'] == c] #restrict to ones on the same chromosome. 
            z['PercentDownIntron'] = (center - z['start'])/z['length']
            for i, r in z.iterrows():
                outfile.write(str(c) + '\t' + str(r['freq']) + '\t' + str(r['start']) + '\t' + str(r['end']) + '\t' + str(r['length']) + '\t' + str(r['PercentDownIntron']) + '\n')         
        print("Writing output for " + str(c))