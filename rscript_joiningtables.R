getwd()
setwd("G:/FIWI/01_Research/01-projects/2024-iak-ab-maternal_variability/06_data_analysis/liverdata/genes with fold change and p value")

F0T1_f <- read.csv2("F0T1_females_genes.csv")
F0T1_f <- F0T1_f[order(F0T1_f[[1]]), ]
rownames(F0T1_f) <- NULL
head(F0T1_f)

F0T1_m <- read.csv2("F0T1_males_genes.csv")
F0T1_m <- F0T1_m[order(F0T1_m[[1]]), ]
rownames(F0T1_m) <- NULL
head(F0T1_m)

F0T2_f <- read.csv2("F0T2_females_genes.csv")
F0T2_f <- F0T2_f[order(F0T2_f[[1]]), ]
rownames(F0T2_f) <- NULL
head(F0T2_f)

F0T2_m <- read.csv2("F0T2_males_genes.csv")
F0T2_m <- F0T2_m[order(F0T2_m[[1]]), ]
rownames(F0T2_m) <- NULL
head(F0T2_m)

F0T3_f <- read.csv2("F0T3_females_genes.csv")
F0T3_f <- F0T3_f[order(F0T3_f[[1]]), ]
rownames(F0T3_f) <- NULL
head(F0T3_f)

F0T3_m <- read.csv2("F0T3_males_genes.csv")
F0T3_m <- F0T3_m[order(F0T3_m[[1]]), ]
rownames(F0T3_m) <- NULL
head(F0T3_m)

F1_f <- read.csv2("F1_females_genes.csv")
F1_f <- F1_f[order(F1_f[[1]]), ]
rownames(F1_f) <- NULL
head(F1_f)

F1_m <- read.csv2("F1_males_genes.csv")
F1_m <- F1_m[order(F1_m[[1]]), ]
rownames(F1_m) <- NULL
head(F1_m)

F2_f <- read.csv2("F2_females_genes.csv")
F2_f <- F2_f[order(F2_f[[1]]), ]
rownames(F2_f) <- NULL
head(F2_f)

F2_m <- read.csv2("F2_males_genes.csv")
F2_m <- F2_m[order(F2_m[[1]]), ]
rownames(F2_m) <- NULL
head(F2_m)

dim(F0T1_f)
dim(F0T1_m)
dim(F0T2_f)
dim(F0T2_m)
dim(F0T3_f)
dim(F0T3_m)
dim(F1_f)
dim(F1_m)
dim(F2_f)
dim(F2_m)

gene_lists <- list(
  F0T1_f = F0T1_f$gene_id,
  F0T2_f = F0T2_f$gene_id,
  F0T3_f = F0T3_f$gene_id,
  F0T1_m = F0T1_m$gene_id,
  F0T2_m = F0T2_m$gene_id,
  F0T3_m = F0T3_m$gene_id,
  F1_f = F1_f$gene_id,
  F2_f = F2_f$gene_id,
  F1_m = F1_m$gene_id,
  F2_m = F2_m$gene_id)

all_genes <- sort(unique(unlist(gene_lists)))

presence_table <- data.frame(
  gene_id = all_genes,
  sapply(gene_lists, function(x) as.integer(all_genes %in% x)),
  row.names = NULL
)

presence_table


