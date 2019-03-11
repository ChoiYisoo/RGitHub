source("http://bioconductor.org/biocLite.R")
biocLite()

biocLite(c("GenomicFeatures", "AnnotationDbi"))

source("http://bioconductor.org/biocLite.R") 
biocLite("BiocUpgrade")     ## R version 2.15 or later


library(GenomicRanges)
sefile <- system.file("extdata", "NCI60.Rda", package="LearnBioconductor")
load(sefile)
nci60data <- t(assay(NCI60))
ncilabels <- colData(NCI60)

# make colors as factors. 
labs <- as.character(unlist(as.list(ncilabels)))

cellColor <- function(vec)
{
  uvec <- unique(vec)
  cols = rainbow(length(uvec))
  colvec <- cols[as.numeric(as.factor(vec))]
  list(colvec=colvec, cols=cols, labels= uvec)
}

par(mfrow=c(1,2))

colres <- cellColor(labs)

plot(pcaRes$x[,1:2],col=colres$colvec, xlab = "z1", ylab="z2", pch=19)
legend("bottomright", legend = colres$labels, text.col = colres$cols, 
       bty="n", cex=0.80)
plot(pcaRes$x[,c(1,3)], col=colres$colvec, xlab="z1", ylab="z3", pch=19)
legend("topright",  legend = colres$labels,text.col = colres$cols, 
       bty ="n" , cex=0.80)



BiocManager::install()
