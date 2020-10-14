#!/usr/bin/env bash

# Author: Kathrine McAulay
# Inputs: None
# Outputs: Mothur executes align.seqs command with specified files

code/mothur/mothur '#align.seqs(fasta=data/raw/rrnDB-5.6_16S_rRNA.fasta, reference=data/references/silva_seed/silva.seed_v138.align, flip=T)'
