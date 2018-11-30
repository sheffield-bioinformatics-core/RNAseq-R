FROM ubuntu:16.04
MAINTAINER Mark Dunning<m.j.dunning@sheffield.ac.uk>
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update 
RUN apt-get install --fix-missing -y git wget unzip
###Get repository of the course. Install data and R packages
RUN mkdir -p /home/participant/Course_Materials
#RUN git clone https://github.com/sheffield-bioinformatics-core/RNAseq-R.git /home/participant/Course_Materials
#RUN R -f /home/participant/Course_Materials/install_bioc_packages.R
WORKDIR /tmp
RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.3.zip -P /tmp
RUN unzip fastqc_v0.11.3.zip
RUN chmod 755 FastQC/fastqc
RUN ln -s $(pwd)/FastQC/fastqc /usr/bin/fastqc
RUN apt-get install -y bowtie2 samtools default-jre build-essential python-dev
## installing latest version of SRA toolkit
RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.1-3/sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN gunzip sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN tar xvf sratoolkit.2.8.1-3-ubuntu64.tar
RUN ln -s /tmp/sratoolkit.2.8.1-3-ubuntu64/bin/* /usr/bin/
RUN apt-get install unzip
RUN wget https://ndownloader.figshare.com/articles/3219673?private_link=f5d63d8c265a05618137 -O fastq.zip
RUN unzip fastq.zip -d /home/participant/Course_Materials/data/
RUN rm fastq.zip
#RUN wget https://ndownloader.figshare.com/articles/3219685?private_link=1d788fd384d33e913a2a -O raw.zip
#RUN unzip raw.zip -d /home/participant/Course_Materials/data/
#RUN rm raw.zip
RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v0.11.0/salmon-0.11.0-linux_x86_64.tar.gz
RUN tar xvzf salmon-0.11.0-linux_x86_64.tar.gz
RUN chmod +x /tmp/salmon-0.11.0-linux_x86_64/bin/salmon
RUN ln -s /tmp/salmon-0.11.0-linux_x86_64/bin/salmon /usr/bin
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install multiqc
RUN wget http://ccb.jhu.edu/software/hisat2/dl/hisat2-2.1.0-Linux_x86_64.zip
RUN unzip hisat2-2.1.0-Linux_x86_64.zip
RUN ln -s /tmp/hisat2-2.1.0/hisat2 /usr/bin
RUN ln -s /tmp/hisat2-2.1.0/hisat2-build /usr/bin
RUN apt-get install -y tophat bowtie2
RUN wget -O subread.tar.gz https://sourceforge.net/projects/subread/files/subread-1.6.3/subread-1.6.3-Linux-x86_64.tar.gz/download
RUN tar zxvf subread.tar.gz
RUN ln -s /tmp/subread-1.6.3-Linux-x86_64/bin/* /usr/bin
WORKDIR /home//participant/Course_Materials/
RUN wget ftp://ftp.ensembl.org/pub/release-91/fasta/mus_musculus/cdna/Mus_musculus.GRCm38.cdna.all.fa.gz -P ensembl_ref/
RUN wget ftp://ftp.ensembl.org/pub/release-91/gtf/mus_musculus/Mus_musculus.GRCm38.91.chr.gtf.gz -P ensembl_ref
RUN salmon index -i salmon_ref/GRCm38_chr1 -t ensembl_ref/Mus_musculus.GRCm38.cdna.all.fa.gz
RUN wget ftp://ftp.ensembl.org/pub/release-91/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.chromosome.19.fa.gz -P ensembl_ref/
RUN gunzip ensembl_ref/Mus_musculus.GRCm38.dna.chromosome.19.fa.gz
RUN mkdir hisat_ref
RUN hisat2-build ensembl_ref/Mus_musculus.GRCm38.dna.chromosome.19.fa hisat_ref/GRCm38_chr19_hisat


