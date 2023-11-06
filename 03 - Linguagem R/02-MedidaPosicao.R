setwd("C:/Users/Zaro/Desktop/PowerBI/Cap12_Liguangem_R")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

?mean
mean(vendas$Valor)
mean(vendas$Custo)

#Funcao Moda
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)

library(ggplot2)
 ggplot(vendas) +
    stat_summary(aes(x = Estado,
                                      y = Valor),
                                      fun = mean,
                                      geom = "bar",
                                      fill = "lightgreen",
                                      col = "grey50") +
    labs(title = "Média de Valor por Estado")
