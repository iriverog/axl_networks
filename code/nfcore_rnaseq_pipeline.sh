# nf-core/rnaseq pipeline
# Author: Ines Rivero Garcia

# First make sure data and samplesheet are in the correct working directory
# /gpfs/bwfor/work/ws/hd_kd353-axl_networks/

screen -S rnaseq

conda activate nextflow

module load system/singularity/3.11.3


# nf-core/rnaseq command for ERBB2 dataset
nextflow run nf-core/rnaseq -revision 3.24.0 -profile helix -c config/helix.config --input data/samplesheet.csv --outdir results --fasta reference/Mus_musculus.GRCm39.dna_sm.primary_assembly.fa.gz --gtf reference/Mus_musculus.GRCm39.115.gtf.gz --aligner star_salmon

# nf-core/rnaseq command for ISM/LIF dataset
nextflow run nf-core/rnaseq -revision 3.24.0 -profile helix -c config/helix.config --input data/samplesheet.csv --outdir results --fasta reference/Mus_musculus.GRCm39.dna_sm.primary_assembly.fa.gz --gtf reference/Mus_musculus.GRCm39.115.gtf.gz --aligner star_salmon

# nf-core/rnaseq command for IGF1 dataset
nextflow run nf-core/rnaseq -revision 3.24.0 -profile helix -c config/helix.config --input data/samplesheet.csv --outdir results --fasta reference/Rattus_norvegicus.GRCr8.dna_sm.toplevel.fa.gz --gtf reference/Rattus_norvegicus.GRCr8.116.gtf.gz --aligner star_salmon

# Then copy the results to sds.