# Notebook

## 8 Feb

### Ideas

General plan - reconstruct the analysis in Liu et. al. 2017 to map STARRseq reads


### Accomplished

- Configured cluster and directory structure
- Set up version control via private github [repo](http://www.github.com/ethanagbaker/BurgeLab). 
- Obtained datasets (Liu 2017) and reference genomes and indicies


### In Progress
- Generating bowtie2 index for hg38 (very slow, should consider parallelizing)
- Alignments hg19 to STARRseq reads with bowtie2 and bowtie

### To Do
- Alignments for hg38 with bowtie2 and bowtie

---
## 9 Feb

### Ideas

General plan - reconstruct the analysis in Liu et. al. 2017 to map STARRseq reads


### Accomplished

- Have an alignment of STARRseq to Hg38 with bowtie2 (Liu used bowtie)
- Parallelized other alignments and submitted those to cluster.
- Sorted bam alignment file
- Installed MACS
- PCR Duplicates removed with Picard
- Initial peak calling performed on hg38/bt2 set, [UCSC track](https://genome.ucsc.edu/cgi-bin/hgTracks?db=hg38&lastVirtModeType=default&lastVirtModeExtraState=&virtModeType=default&virtMode=0&nonVirtPosition=&position=chr1%3A602689-607258&hgsid=656347429_0B9Uw3JuWzzsR3SB5dTUISOEgldd)

### In Progress
- Read Cinghu 2017 paper

### To Do
- Determine how to map enhancers....bedtools and ucsc genome browser? - kind of done
- Get intron start and end positons, find which overlap with enhancers with bedtools intersect.
- Normalize positions to percent of total length to the end (or something like that)
---
