mkdir -p sra_data
mkdir -p fastq_files

for i in {44..55};
do
	wget ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByStudy/sra/SRP/SRP045/SRP045534/SRR15524${i}/SRR15524${i}.sra -P sra_data
	fastq-dump sra_data/SRR15524${i}.sra -O fastq_files
	gzip fastq_files/SRR15524${i}.fastq
done
cd ..

