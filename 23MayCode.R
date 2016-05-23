##Read data on table

file <- "gencode.v24.annotation.gff3"
cat("Loading", file, "at", date(), " ... \n")
GFF <- read.table(file, header=F, sep="\t", nrows=1000)
colnames(GFF) <- c("seqid", "source", "type", "start", "end", "score", "strand", "phase", "attributes")
rownames(GFF) <- 1:nrow(GFF)

## bioconductor
source("https://bioconductor.org/biocLite.r")
biocLite("BSgenome")
biocLite("BSgenome.Athaliana.TAIR.TAIR9")
library(BSgenome.Athaliana.TAIR.TAIR9)