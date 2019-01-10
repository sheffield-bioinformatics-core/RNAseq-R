FROM bioconductor/release_base2:R3.5.1_Bioc3.8
MAINTAINER Mark Dunning<m.j.dunning@sheffield.ac.uk>
RUN R -e 'install.packages("BiocManager")'
RUN R -e 'BiocManager::install("tidyverse")'
RUN R -e 'BiocManager::install("org.Mm.eg.db")'
RUN R -e 'BiocManager::install("TxDb.Mmusculus.UCSC.mm10.knownGene")'
RUN R -e 'BiocManager::install("DESeq2")'
RUN R -e 'BiocManager::install("goseq")'
RUN R -e 'BiocManager::install("pheatmap")'
RUN R -e 'BiocManager::install("rmarkdown")'
RUN R -e 'BiocManager::install("tximport")'

RUN apt-get -y install libudunits2-dev libpng-dev
RUN R -e 'BiocManager::install("clusterProfiler")'
RUN R -e 'BiocManager::install("DOSE")'
RUN R -e 'BiocManager::install("pathview")'
RUN apt-get install --fix-missing -y git
###Get repository of the course. Install data and R packages
RUN git clone https://github.com/sheffield-bioinformatics-core/RNAseq-R.git /home/rstudio/workshop
RUN mv /home/rstudio/workshop/CourseData.zip /home/rstudio/
WORKDIR /home/rstudio/
RUN unzip CourseData.zip
RUN chown rstudio /home/rstudio/meta_data
RUN chown rstudio /home/rstudio/Robjects
RUN chown rstudio /home/rstudio/analysis.Rmd
RUN rm CourseData.zip




