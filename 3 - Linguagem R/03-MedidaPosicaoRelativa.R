setwd("C:/Users/Zaro/Desktop/PowerBI/Cap12_Liguangem_R")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

head(vendas)
tail(vendas)
View(vendas)

# Medidas de tendencia central
summary(vendas$Valor)

# OBS: "c" é uma função que cria um vetor em linguagem R
summary(vendas[c('Valor', 'Custo')])

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)

#Quartis
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # intervalo entre Q3 e Q1
range(vendas$Valor)
diff(range(vendas$Valor))


