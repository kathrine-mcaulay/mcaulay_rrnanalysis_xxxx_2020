#!/usr/bin/env bash

# Author: Kathrine McAulay
# Inputs:
# Outputs: Places silva seed reference alignments into `data/references/silva_seed`

# We downloaded this version of the silva reference to help with aligning our
# sequence data. This is version 138, which was released in 2020. Because the tgz
# file contains a README file, we extracted to a directory within `data/references`


wget -P data/references -nc https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138.tgz
mkdir data/references/silva_seed/
tar xvzf data/references/silva.seed_v138.tgz -C data/references/silva_seed/
