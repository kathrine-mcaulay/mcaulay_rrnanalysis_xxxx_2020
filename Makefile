# Rule
# target: prerequisite1 prerequisite2 prerequisite3
# (tab)recipe
# Note $@ equates to the target for that particular rule

data/references/silva_seed/silva.seed_v138.align : code/get_silva_seed.sh
	./code/get_silva_seed.sh

data/raw/rrnDB-5.6_16S_rRNA.fasta : code/get_rrndb_files.sh
	$< $@

data/raw/rrnDB-5.6.tsv : code/get_rrndb_files.sh
	$< $@

data/raw/rrnDB-5.6_pantaxa_stats_NCBI.tsv : code/get_rrndb_files.sh
	$< $@

data/raw/rrnDB-5.6_pantaxa_stats_RDP.tsv : code/get_rrndb_files.sh
	$< $@

data/raw/rrnDB-5.6_16S_rRNA.align : code/align_sequences.sh\
												data/references/silva_seed/silva.seed_v138.align\
												data/raw/rrnDB-5.6_16S_rRNA.fasta
	$<
