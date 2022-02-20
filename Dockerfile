FROM bioconductor/bioconductor_docker:RELEASE_3_14

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "BiocManager::install(c('stemangiola/tidyseurat@v0.5.1', 'stemangiola/tidySingleCellExperiment@v1.3.2'))"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
