---
layout: page
title: RNAseq analysis in R
---

<!--![](images/CRUK_Cambridge_Major Centre logo.jpg)-->


## Acknowledgements

This course is based on the course [RNAseq analysis in R](http://combine-australia.github.io/2016-05-11-RNAseq/) prepared by [Combine Australia](https://combine.org.au/) and delivered on May 11/12th 2016 in Carlton. We are extremely grateful to the authors for making their materials available; Maria Doyle, Belinda Phipson, Matt Ritchie, Anna Trigos, Harriet Dashnow, Charity Law.

<!--![](images/combine_banner.png)-->

## Outline

In this workshop, you will be learning how to analyse RNA-seq count data, using R. This will include reading the data into R, quality control and performing differential expression analysis and gene set testing, with a focus on the DESeq1 analysis workflow. You will learn how to generate common plots for analysis and visualisation of gene expression data, such as boxplots and heatmaps. You will also be learning how alignment and counting of raw RNA-seq data can be performed in R. This workshop is aimed at biologists interested in learning how to perform differential expression analysis of RNA-seq data when reference genomes are available.

> ## Prerequisites {.prereq}
>
> Some basic R knowledge is assumed.
> If you are not familiar with the R statistical programming language we
> strongly encourage you to work through an introductory R course before
> attempting these materials.
> We recommend reading our [R crash course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)
> before attending, which should take around 1 hour
>

## Data

- Mouse mammary data (counts): [https://figshare.com/s/1d788fd384d33e913a2a](https://figshare.com/s/1d788fd384d33e913a2a)

## RNAseq analysis in R tutorials

- [Alignment and Counting](align-and-count.nb.html)
    + [source file](align-and-count.Rmd)
    + [with solutions](align-and-count_wiSolution.Rmd)
- [RNA-seq Pre-processing](rna-seq-preprocessing.nb.html)
    + [source file](rna-seq-preprocessing.Rmd)
    + [with solutions](rna-seq-preprocessing_wiSolution.Rmd)
- [Differential Expression for RNA-seq](rna-seq-de.nb.html)
    + [source file](rna-seq-de.Rmd)
- [Annotation and Visualisation of RNA-seq results](rna-seq-annotation-visualisation.nb.html)
    + [source file](rna-seq-annotation-visualisation.Rmd)
    + [with solutions](rna-seq-annotation-visualisation-solutions.Rmd)
- [Gene-set testing](rna-seq-gene-set-testing.nb.html)
    + [source file](rna-seq-gene-set-testing.Rmd)
    + [with solutions](rna-seq-gene-set-testing_wiSolution.Rmd)
    
### Lecture slides

- [RNASeq basics](slides/rnaSeq_May2017.pdf)
- [Linear Model and Statistics for Differential Expression](slides/LinearModels.pdf)

### Supplementary lessons

Introductory R materials:

- [R Crash Course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)

Additional RNAseq materials:

- [Downloading files from SRA and aligning](getting-raw-reads.nb.html)

Data: Mouse mammary data (fastq files): [https://figshare.com/s/f5d63d8c265a05618137](https://figshare.com/s/f5d63d8c265a05618137)

### Additional resources

[Bioconductor help](https://www.bioconductor.org/help/)  
[Biostars](https://www.biostars.org/)  
[SEQanswers](http://seqanswers.com/)  
