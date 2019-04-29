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

#extrair as informações referentes as pernambuco#

docentes_pe <- subset(docentes_ne, CO_UF =="26")

#salvar como dataframe#

docentes_pe <- as.data.frame(docentes_pe)

#Observação do percentual de raça dos professsores de PE#

prop.table(table(docentes_pe$TP_COR_RACA))*100

# RESULTADO #
#  0           1          2          3          4          5 
# 44.0003102 23.7823599  3.5646520  27.7994393  0.3438641  0.5093745

 

# SENDO 0 A ENTRADA PARA OS DOCENTES QUE NÃO DECLARARARAM RAÇA, LOGO A PORCENTAGEM É DE 44,00% A QUANTIDADE DE DOCENTES QUE NÃO DECLARARAM COR OU RAÇA NO CENSO ESCOLAR #
# SENDO 2 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PRETOS, LOGO A PORCENTAGEM É DE 3,56% A QUANTIDADE DE DOCENTES AUTODECLARADOS PRETOS NO CENSO ESCOLAR  #
# SENDO 3 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PARDOS, LOGO A PORCENTAGEM É DE 27,19% A QUANTIDADE DE DOCENTES AUTODECLARADOS PARDOS NO CENSO ESCOLAR #

#P1 é a nova variavel que representa a porcentagem de autodeclarados pretos#

P1 <- 3.56

#P2 é a nova variavel que representa a porcentagem de autodeclarados pardos#

P2 <-  27.19

P1 + P2
# 30.75 #

# A PORCENTAGEM DE AUTODECLARADOS PRETOS OU PARDOS É DE 30,75% #
