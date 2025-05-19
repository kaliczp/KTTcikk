library(readxl)
ktt <- as.data.frame(read_excel("klaszter.xlsx")) #Beolvasás
ktt <- ktt[,-ncol(ktt)] # Utolsó oszlop (összeg) törölve
