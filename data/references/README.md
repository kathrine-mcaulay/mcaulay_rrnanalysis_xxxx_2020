### Downloading the reference files

Downloaded the [SILVA SEED](https://mothur.org/wiki/silva_reference_files/) database  
This was the latest version **(release 138)**

Full link for file is:  
https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138.tgz

Initially the whole directory was moved to `data/references/`; however, in Code Club, Pat suggested just moving the .tax and .align files. therefore, these files were moved into `data/references/` and the remaining files/directories were removed.

We used `wget`, `mkdir`, and `tar` to download and extract silva files to `data/references/silva_seed/`
```
wget -P data/references -nc https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138.tgz
mkdir data/references/silva_seed/
tar xvzf data/references/silva.seed_v138.tgz -C data/references/silva_seed/
```
