FROM ubuntu:18.04
MAINTAINER Mark Dunning<m.j.dunning@sheffield.ac.uk>
# Do not exclude man pages & other documentation
RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update && \
    dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall && \
    rm -r /var/lib/apt/lists/*
RUN apt-get update 
RUN apt-get install --fix-missing -y git wget unzip
#RUN git clone https://github.com/sheffield-bioinformatics-core/RNAseq-R.git /home/participant/Course_Materials
#RUN R -f /home/participant/Course_Materials/install_bioc_packages.R
WORKDIR /opt
RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.3.zip -P /opt
RUN unzip fastqc_v0.11.3.zip
RUN chmod 755 FastQC/fastqc
RUN ln -s $(pwd)/FastQC/fastqc /usr/bin/fastqc
RUN apt-get install -y bowtie2 samtools default-jre build-essential python-dev zlib1g-dev  
## installing latest version of SRA toolkit
RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.1-3/sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN gunzip sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN tar xvf sratoolkit.2.8.1-3-ubuntu64.tar
RUN ln -s /opt/sratoolkit.2.8.1-3-ubuntu64/bin/* /usr/bin/

RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v0.11.0/salmon-0.11.0-linux_x86_64.tar.gz
RUN tar xvzf salmon-0.11.0-linux_x86_64.tar.gz
RUN chmod +x /opt/salmon-0.11.0-linux_x86_64/bin/salmon
RUN ln -s /opt/salmon-0.11.0-linux_x86_64/bin/salmon /usr/bin
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install multiqc
RUN pip install cython
RUN pip install --user --upgrade cutadapt
RUN pip install HTSeq

RUN chmod +x ~/.local/bin/cutadapt
RUN ln -s ~/.local/bin/cutadapt /usr/bin/cutadapt
RUN wget http://ccb.jhu.edu/software/hisat2/dl/hisat2-2.1.0-Linux_x86_64.zip
RUN unzip hisat2-2.1.0-Linux_x86_64.zip
RUN ln -s /opt/hisat2-2.1.0/hisat2 /usr/bin
RUN ln -s /opt/hisat2-2.1.0/hisat2-build /usr/bin
RUN apt-get install -y tophat bowtie2
RUN wget -O subread.tar.gz https://sourceforge.net/projects/subread/files/subread-1.6.3/subread-1.6.3-Linux-x86_64.tar.gz/download
RUN tar zxvf subread.tar.gz
RUN ln -s /opt/subread-1.6.3-Linux-x86_64/bin/* /usr/bin

WORKDIR /opt
RUN wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip
RUN unzip Trimmomatic-0.36.zip
ENV TRIMMOMATIC /opt/Trimmomatic-0.36/trimmomatic-0.36.jar


RUN wget https://github.com/pachterlab/kallisto/releases/download/v0.45.0/kallisto_linux-v0.45.0.tar.gz
RUN tar zxvf kallisto_linux-v0.45.0.tar.gz
RUN ln -s /opt/kallisto_linux-v0.45.0/kallisto /usr/bin/

RUN wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN tar zxvf cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/gtf_to_sam /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/cuffcompare /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/cuffdiff /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/cuffmerge /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/cuffnorm /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/gffread /usr/bin
RUN ln -s /opt/cufflinks-2.2.1.Linux_x86_64/cuffquant /usr/bin

RUN wget https://github.com/deweylab/RSEM/archive/v1.3.1.tar.gz
RUN tar zxvf v1.3.1.tar.gz
WORKDIR RSEM-1.3.1 
RUN make
RUN make install 

## STAR

WORKDIR /opt

RUN git clone https://github.com/alexdobin/STAR.git
WORKDIR STAR/source
RUN make

## Tidy up to remove temporary files etc

RUN rm /opt/*.zip
RUN rm /opt/*.tar
RUN rm /opt/*.tar.gz

WORKDIR /

