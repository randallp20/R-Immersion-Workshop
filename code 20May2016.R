x(2,3)
x$m[2]
x[[3]][2]

## example of creating data frame
d <- data.frame(list(gene=c("BRCA1","PTEN"),chr=c("chr17","chr10"), begin=c(43044296,87863113)))
d
d$gene
write.table(d,file="cancer_genes.txt",sep="\t",quote=FALSE,row.names=FALSE,col.names=TRUE)
e<-read.table(file="cancer_genes.txt",header=TRUE,sep="\t")

## recall all info from first column of data frame

d[1,]
## access second column (factor data type)    
d[,2]

## use column name to recall

d[,"gene"]
d["gene",]
d[1,"gene"]


## download and access arabidopsis thaliana genome file


## read the table of data

read.table(file,header=FALSE,sep="",
           quote="\"",dec=".",
           numerals=c("allow.loss","warn.loss","no.loss"),
           row.names,col.names,
           as.is=!stringsAsFactors,na.strings="NA",
           colClasses=NA, nrows=-1,skip=0,
           check.names=TRUE, fill=!blank.lines.skip,
           strip.white=FALSE,blank.lines.skip=TRUE,
           comment.char="#",allowEscapes = FALSE,
           flush = FALSE,
           stringsAsFactors = default.stringsAsFactors(),
           fileEncoding ="",encoding="unknown",text,skipNul=FALSE)
##Write the table

write.table(x,
            file="",
            append = FALSE,
            quote=TRUE,
            sep = "",
            eol="\n",
            na="NA",
            dec=".",
            row.names = TRUE,
            col.names = TRUE,
            qmethod = c("escape","double"))



## gff-version 3
## find how many...

d<- read.table("Otolemur_garnetti.OtoGar3.80.gtf",nrows=10, sep = "\t")
dim(d)
sum(d[,3]=="exon")
sum(d[,3]==)

##Read data on table

file <- "gencode.v24.annotation.gff3"
cat("Loading", file, "at", date(), " ... \n")
GFF <- read.table(file, header=F, sep="\t", nrows=1000)
colnames(GFF) <- c("seqid", "source", "type", "start", "end", "score", "strand", "phase", "attributes")
rownames(GFF) <- 1:nrow(GFF)

## read whole data file
file <- "gencode.v24.annotation.gff3"
cat("Loading", file, "at", date(), " ... \n")
GFF <- read.table(file, header=F, sep="\t",)
colnames(GFF) <- c("seqid", "source", "type", "start", "end", "score", "strand", "phase", "attributes")
rownames(GFF) <- 1:nrow(GFF)
