x(2,3)
x$m[2]
x[[3]][2]

## example of creating data frame
d <- data.frame(list(gene=c("BRCA1","PTEN"),chr=c("chr17","chr10"), begin=c(43044296,87863113)))
d
d$gene
write.table(d,file="cancer_genes.txt",sep="\t",quote=FALSE,row.names=FALSE,col.names=TRUE)
e<-read.table(file="cancer_genes.txt",header=TRUE,sep="\t")