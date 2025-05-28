setwd("E:/gitfolder/AGILE_LDP_UAV/")
# devtools::install_github("jiabowang/GAPIT")
library(GAPIT3)
#
myG <- read.table("Data_GWAS/myG_LDP_GRN_RD3_MAF5_MISS25.txt", header = F)
#
myY_it17_d <- read.csv("Data_GWAS/myY_it17_d.csv")
myY_ro17_d <- read.csv("Data_GWAS/myY_ro17_d.csv")
myY_su17_d <- read.csv("Data_GWAS/myY_su17_d.csv")
myY_su18_d <- read.csv("Data_GWAS/myY_su18_d.csv")
#
myY_it17_gc <- read.csv("Data_GWAS/myY_it17_gc.csv")
myY_ro17_gc <- read.csv("Data_GWAS/myY_ro17_gc.csv")
myY_su17_gc <- read.csv("Data_GWAS/myY_su17_gc.csv")
#
myY_myF <- read.csv("Data_GWAS/myY_myF.csv")
#
#setdiff(t(myG[1,]), myY_it17_d$Name)
#setdiff(myY_it17_d$Name, t(myG[1,]))
#
setwd("E:/gitfolder/AGILE_LDP_UAV/GWAS_Results2/")
myModels <- c("MLM","FarmCPU","BLINK")
myGAPIT <- GAPIT(Y = myY_it17_d, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
myGAPIT <- GAPIT(Y = myY_ro17_d, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
myGAPIT <- GAPIT(Y = myY_su17_d, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
myGAPIT <- GAPIT(Y = myY_su18_d, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
#
myGAPIT <- GAPIT(Y = myY_it17_gc, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
myGAPIT <- GAPIT(Y = myY_ro17_gc, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
myGAPIT <- GAPIT(Y = myY_su17_gc, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
#
myGAPIT <- GAPIT(Y = myY_myF, G = myG, PCA.total = 4, 
                 model = myModels, Phenotype.View = F)
#
myGAPIT <- GAPIT(Y = myY_su17_gc[,c("Name","Su17_gc.a.auc.e")], G = myG, PCA.total = 4, 
                 model = c("FarmCPU","BLINK"), Phenotype.View = F)
