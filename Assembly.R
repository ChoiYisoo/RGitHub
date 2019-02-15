#install Bionconductor
if (!requireNamespace("BiocManager"))
  install.packages("BiocManager")
BiocManager::install()

#For read FASTA file(seqinr package install)
install.packages('seqinr')
library('seqinr')
# Read DNA Sequence
#lawSequence <- read.fasta("mysequence.fasta")
#lawSequence
#attributes(lawSequence)

#setRepositories()

#for read FASTAQ file
BiocManager::install("ShortRead")
library(ShortRead)



#for data preprocessing
#library(dplyr)



#split fasta file
# library(Biostrings)
# library(BiocParallel)
# BiocInstaller::biocLite(hiReadsProcessor)



#library(hiReadsProcessor)
## added to avoid package build failure on windows machines ##
#if(.Platform$OS.type == "windows") { register(SerialParam()) }


# if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install("hiReadsProcessor", version = "3.8")
# 



#pairwise sequence