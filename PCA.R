library(readxl)
ktt <- as.data.frame(read_excel("klaszter.xlsx")) #Beolvasás
ktt <- ktt[,-ncol(ktt)] # Utolsó oszlop (összeg) törölve
?prcomp # Help
ktt1.pr <- prcomp(ktt[,11:ncol(ktt)]) # PCA OC data
summary(ktt1.pr) # PCs
