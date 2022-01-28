<!-- badges: start -->
[![DOI](https://zenodo.org/badge/379767139.svg)](https://zenodo.org/badge/latestdoi/379767139)
[![.github/workflows/basic_checks.yaml](https://github.com/tidytranscriptomics-workshops/iscb2021_tidytranscriptomics/workflows/.github/workflows/basic_checks.yaml/badge.svg)](https://github.com/tidytranscriptomics-workshops/iscb2021_tidytranscriptomics/actions) 	
<!-- badges: end -->

# Introduction to Tidy Transcriptomics
<p float="left">
<img height="100" alt="iscb2021" src="man/figures/iscb_logo.png"/>
<img height="100" alt="tidybulk" src="https://github.com/Bioconductor/BiocStickers/blob/master/tidybulk/tidybulk.png?raw=true"/>
</p>

## Instructor names and contact information

* Maria Doyle <Maria.Doyle at petermac.org>  
* Stefano Mangiola <mangiola.s at wehi.edu.au>

## Syllabus

Material [web page](https://tidytranscriptomics-workshops.github.io/iscb2021_tidytranscriptomics/articles/tidytranscriptomics.html).

More details on the workshop are below.

## Workshop package installation 

For the iscb2021 workshop, an RStudio in the cloud will be provided with everything installed, all that participants will need is a web browser. 

If you want to install the packages and material post-workshop, the instructions are below. The workshop is designed for R `4.1` and Bioconductor 3.14.

```
#install.packages('remotes')

# Need to set this to prevent installation erroring due to even tiny warnings, similar to here: https://github.com/r-lib/remotes/issues/403#issuecomment-748181946
Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS" = "true")

# Install same versions used in the workshop
remotes::install_github(c("stemangiola/tidybulk@v1.5.5", "stemangiola/tidySummarizedExperiment@v1.5.1", "stemangiola/tidySingleCellExperiment@v1.3.2"))

# Install workshop package

remotes::install_github("tidytranscriptomics-workshops/iscb2021_tidytranscriptomics", build_vignettes = TRUE)

# To view vignettes
library(iscb2021tidytranscriptomics)
browseVignettes("iscb2021tidytranscriptomics")
```

To run the code, you could then copy and paste the code from the workshop vignette or [R markdown file](https://raw.githubusercontent.com/tidytranscriptomics-workshops/iscb2021_tidytranscriptomics/master/vignettes/tidytranscriptomics.Rmd) into a new R Markdown file on your computer.

## Workshop Description

This tutorial will present how to perform analysis of single-cell and bulk RNA sequencing data following the tidy data paradigm. The tidy data paradigm provides a standard way to organise data values within a dataset, where each variable is a column, each observation is a row, and data is manipulated using an easy-to-understand vocabulary. Most importantly, the data structure remains consistent across manipulation and analysis functions.

This can be achieved with the integration of packages present in the R CRAN and Bioconductor ecosystem, including [tidyseurat](https://stemangiola.github.io/tidyseurat/), [tidySingleCellExperiment](https://stemangiola.github.io/tidySingleCellExperiment/), [tidybulk](https://stemangiola.github.io/tidybulk/), [tidyHeatmap](https://stemangiola.github.io/tidyHeatmap/) and [tidyverse](https://www.tidyverse.org/). These packages are part of the tidytranscriptomics suite that introduces a tidy approach to RNA sequencing data representation and analysis. For more information see the [tidy transcriptomics blog](https://stemangiola.github.io/tidytranscriptomics/).

### Pre-requisites

* Familiarity with tidyverse syntax
* Some familiarity with bulk RNA-seq and single cell RNA-seq

Strongly recommended background reading:

https://melbournebioinformatics.github.io/r-intro-biologists/intro_r_biologists.html  
https://towardsdatascience.com/coding-in-r-nest-and-map-your-way-to-efficient-code-4e44ba58ee4a by Rebecca O’Dwyer  
https://finnstats.com/index.php/2021/04/02/tidyverse-in-r/

### Workshop Participation

The workshop format is a 3 hour session consisting of hands-on demos, exercises and Q&A.

### _R_ / _Bioconductor_ packages used

* tidybulk
* tidyseurat
* tidyHeatmap
* limma
* edgeR
* DESeq2
* airway
* org.Hs.eg.db
* ggrepel
* GGally
* plotly


### Time outline

Guide

| Activity                                                | Time |
|---------------------------------------------------------|------|
| **Part 1 Bulk RNA-seq Core**                            |      |
|  *Hands-on Demos + Exercises*                           |  90m |
|      Differential gene expression                       |      |
|      Cell type composition analysis                     |      |
| **Part 2 Single-cell RNA-seq**                          |      |
|  *Hands-on Demos + Exercises*                           |  90m |
|      Single-cell analysis                               |      |
|      Pseudobulk analysis                                |      |
| Total                                                   | 180m |

### Workshop goals and objectives

In exploring and analysing RNA sequencing data, there are a number of key concepts, such as filtering, scaling, dimensionality reduction, hypothesis testing, clustering and visualisation, that need to be understood. These concepts can be intuitively explained to new users, however, (i) the use of a heterogeneous vocabulary and jargon by methodologies/algorithms/packages, (ii) the complexity of data wrangling, and (iii) the coding burden, impede effective learning of the statistics and biology underlying an informed RNA sequencing analysis.

The tidytranscriptomics approach to RNA sequencing data analysis abstracts out the coding-related complexity and provides tools that use an intuitive and jargon-free vocabulary, enabling focus on the statistical and biological challenges.

#### Learning goals

* To understand the key concepts and steps of RNA sequencing data analysis
* To approach data representation and analysis though a tidy data paradigm, integrating tidyverse with tidybulk, tidyseurat, tidySingleCellExperiment and tidyHeatmap.

#### Learning objectives

* Recall the key concepts of RNA sequencing data analysis
* Apply the concepts to publicly available data
* Create plots that summarise the information content of the data and analysis results

