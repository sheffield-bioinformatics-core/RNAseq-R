mkdir -p salmon_quant/
for i in {44..55}
do
salmon quant -i salmon_ref/GRCm38 --libType A  \
--gcBias -r fastq_files/SRR15524${i}.fastq.gz -o salmon_quant/SRR15524${i}
gzip salmon_quant/SRR15524${i}/quant.sf
done

