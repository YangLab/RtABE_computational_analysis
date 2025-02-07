# FastQC:quality control
mkdir 02_fastqc
ls ./01_fqlink |awk '{print "fastqc -o ./02_fastqc ./01_fqlink/"$0" --adapters /picb/rnomics3/leiyunni/software/FastQC/adapters_TruSeq3-PE-2.fa"}' | parallel -j 4 &

# Trimmomatic PE
mkdir 03_fqtrimmed
ls ./01_fqlink/*R1.fastq.gz | awk -F '/' '{print $NF}' | awk -F"_" '{print "trimmomatic PE -threads 10 -phred33 -trimlog ./03_fqtrimmed/"$1".trimlog ./01_fqlink/"$1"_R1.fastq.gz ./01_fqlink/"$1"_R2.fastq.gz ./03_fqtrimmed/"$1"_R1_trimmed.fq ./03_fqtrimmed/"$1"_R1_unpaired.fq   ./03_fqtrimmed/"$1"_R2_trimmed.fq  ./03_fqtrimmed/"$1"_R2_unpaired.fq ILLUMINACLIP:/picb/rnomics1/xuew/software/Trimmomatic-0.32/adapters/TruSeq3-PE-2.fa:2:30:10:8:true LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:50"}' | parallel -j 4 > ./03_fqtrimmed/Trim.log 2>&1

