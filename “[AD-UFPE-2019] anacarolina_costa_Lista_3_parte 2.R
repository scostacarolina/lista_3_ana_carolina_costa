###### ANÁLISE DE DADOS ######
###ANA CAROLINA DOS SANTOS COSTA###
##LISTA 03###



#### EXERCICIO 6 ####
#abrindo o pacote para usar o banco de dados#

require(ffbase)
#definindo o local da base#

setwd("C:/Users/ana carolina/Desktop/cadeiras-mestrado/análise de dados - davi moreira/aula 01 do R")

#carregando a base de dados#

docentes_ne <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|", first.rows=100000)

# verifico as dimensões#

dim(docentes_ne)

# [1] 2930354     132#

#salvando como data.frame#
docentes_ne <- as.data.frame(docentes_ne)

#observando a descrição da variavel de raça#

table(docentes_ne$TP_COR_RACA)

#Percentual de docentes que não declararam raça ou cor#

prop.table(table(docentes_ne$TP_COR_RACA))*100

#resultado#
#0          1          2          3          4          5         #
#42.3277188 18.9256656  4.0941129 33.0568252  1.2819270  0.3137505# 

# SENDO 0 A ENTRADA PARA OS DOCENTES QUE NÃO DECLARARARAM RAÇA, LOGO A PORCENTAGEM É DE 42,32% A QUANTIDADE DE DOCENTES QUE NÃO DECLARARAM COR OU RAÇA NO CENSO ESCOLAR #
# SENDO 2 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PRETOS, LOGO A PORCENTAGEM É DE 4,09% A QUANTIDADE DE DOCENTES AUTODECLARADOS PRETOS NO CENSO ESCOLAR  #
# SENDO 3 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PARDOS, LOGO A PORCENTAGEM É DE 33,05% A QUANTIDADE DE DOCENTES AUTODECLARADOS PARDOS NO CENSO ESCOLAR #

#P1 é a nova variavel que representa a porcentagem de autodeclarados pretos#

P1 <- 4.09

#P2 é a nova variavel que representa a porcentagem de autodeclarados pardos#

P2 <- 33.05

P1 + P2
# 37.14 #

# A PORCENTAGEM DE AUTODECLARADOS PRETOS OU PARDOS É DE 37,14% #
