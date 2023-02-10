setwd("C:/Users/Zaro/Desktop/PowerBI/Cap12_Liguangem_R")
getwd()

# Carregando os dados
dados <- read.table("Usuarios.csv",
                  dec = ".",
                  sep = ",",
                  h = T,
                  fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$grau_instrucao)
summary(dados$salario)

# Tabela de Frequencias Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequencias Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Adiciona nome Total da coluna com nome 4
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)
