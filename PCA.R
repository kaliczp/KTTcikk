library(readxl)
ktt <- as.data.frame(read_excel("klaszter.xlsx")) #Beolvasás
ktt <- ktt[,-ncol(ktt)] # Utolsó oszlop (összeg) törölve
?prcomp # Help
ktt1.pr <- prcomp(ktt[,11:ncol(ktt)]) # PCA OC data
summary(ktt1.pr) # PCs

ktt1.pr <- prcomp(ktt[,11:ncol(ktt)], rank = 2) # PCA OC data
summary(ktt1.pr) # PCs
plot(ktt1.pr) # components
biplot(ktt1.pr) # components

#reverse the signs
ktt1.pr$rotation <- -1*ktt1.pr$rotation
biplot(ktt1.pr)

#reverse the signs of the scores
ktt1.pr$x <- -1*ktt1.pr$x
biplot(ktt1.pr)

## Elegyaránnyal
kttea <- ktt[,c(8,11:ncol(ktt))]
kttea$Elegyarány <- as.numeric(kttea$Elegyarány)
ktt2.pr <- prcomp(kttea)
plot(ktt2.pr)
biplot(ktt2.pr, scale = 0)
