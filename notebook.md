#Notebook

##8 Feb

###Ideas

General plan - reconstruct the analysis in Liu et. al. 2017 to map STARRseq reads


###Accomplished

-Configured cluster and directory structure
-Set up version control via private github [repo](http://www.github.com/ethanagbaker/BurgeLab). 
-Obtained datasets (Liu 2017) and reference genomes and indicies


###In Progress
-Generating bowtie2 index for hg38 (very slow, should consider parallelizing)
-Alignments hg19 to STARRseq reads with bowtie2 and bowtie

###To Do
-Alignments for hg38 with bowtie2 and bowtie

---
##9 Feb

###Ideas

General plan - reconstruct the analysis in Liu et. al. 2017 to map STARRseq reads


###Accomplished

-Have an alignment of STARRseq to Hg38 with bowtie2 (Liu used bowtie)
-Parallelized other alignments and submitted those to cluster.
-Sorted bam alignment file



###In Progress
-Want to remove PCR duplicate reads before doing the peak calling

###To Do
-Install MACS
-Determine how to map enhances....bedtools and ucsc genome browser?
-Read Cinghu 2017 paper

---
