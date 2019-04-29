### Ana carolina Costa ###
### Lista 3 ###
### An√°lise de Dados ###


#### exercicio 1 ####
#https://github.com/scostacarolina/lista_3_ana_carolina_costa#


#### exercicio 2 ####

# Atribuindo valores as variaveis x e y:

x <- 4

x

y <- 5

y

z <- x+y

z

# Multiplicando pelo CPF
z * 10558693440

cpf <- 10558693440

z * cpf

#resposta 02 = 95028240960#

#### exercicio 3 ####


#visualizando base dados mtcars#
View(mtcars)

#abrindo base de dados mtcars#
data(mtcars) 

#abrindo descri√ß√£o da base de dados#
str(mtcars)

#S√£o 32 observa√ß√µes reunidas em 11 variav√©is num√©ricas#

# visualizar dimens√£o da base de dados#
dim(mtcars)
#[1] 32 11#

#visualizar quais s√£o as variav√©is num√©ricas#

names(mtcars)

##S√£o elas: "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb" ##


#IMPRIMIR A TERCEIRA COLUNA DA BASE#

mtcars[,3:3]

##[1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8
##[14] 275.8 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0
##[27] 120.3  95.1 351.0 145.0 301.0 121.0

#IMPRIMIR A SEGUNDA LINHA DA BASE#

mtcars[2:2,]

##  mpg cyl disp  hp  drat    wt     qsec     vs am gear carb   
##  21   6  160   110  3.9  2.875   17.02      0  1    4    4


#imprimir o quarto elemento da coluna cyl#
mtcars["Hornet 4 Drive","cyl"]
## [1] 6 ##
#Resumo Descritivo da Base#
summary(mtcars)
#       mpg             cyl             disp             hp             drat      
# Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
# 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
# Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
# Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
# 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
# Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
# wt             qsec             vs               am              gear      
# Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
# 1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
# Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
# Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
# 3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
# Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
# carb      
# Min.   :1.000  
# 1st Qu.:2.000  
# Median :2.000  
# Mean   :2.812  
# 3rd Qu.:4.000  
# Max.   :8.000

#### exercicio 4 ####
# Carregar a base de dados Turmas_csv
require(ffbase)
library(ffbase)
#indico o caminho para o arquivo#
setwd("C:\\Users\\ana carolina\\Desktop\\cadeiras-mestrado\\an√°lise de dados - davi moreira\\aula 01 do R")

#Solicito a abertura dos dados#

turmas <- read.csv2.ffdf(file ="TURMAS.csv", sep = "|")

#verifico as dimens√µes da base#

dim(turmas)

#[1] 2430211#

#verificando os nomes das turmas#

names(turmas)

#filtrar turmas pelo estado de PE#

turmas_pe<- subset(turmas, CO_UF == "26")

#Verificando se est√° correto#

dim(turmas_pe)

#salvando como data.frame#
 
turmas_pe <- as.data.frame(turmas_pe)

#verificando se est√° correto#

getwd()

#salvando a nova base de dados em formato RDATA#

save(turmas_pe, file = "turmas_pe_para_lista_3")

#### exercicio 5 #### 
#abrir base de turmas_pe#

dim(turmas_pe)

#apresente a m√©dia do n√∫mero de matr√≠culas#

mean(turmas_pe$NU_MATRICULAS)

# Resultado 23.07089 #



#### EXERCICIO 6 ####
#abrindo o pacote para usar o banco de dados#

require(ffbase)
#definindo o local da base#

setwd("C:/Users/ana carolina/Desktop/cadeiras-mestrado/an·lise de dados - davi moreira/aula 01 do R")

#carregando a base de dados#

docentes_ne <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|", first.rows=100000)

# verifico as dimensıes#

dim(docentes_ne)

# [1] 2930354     132#

#salvando como data.frame#
docentes_ne <- as.data.frame(docentes_ne)

#extrair as informaÁıes referentes as pernambuco#

docentes_pe <- subset(docentes_ne, CO_UF =="26")

#salvar como dataframe#

docentes_pe <- as.data.frame(docentes_pe)

#ObservaÁ„o do percentual de raÁa dos professsores de PE#

prop.table(table(docentes_pe$TP_COR_RACA))*100

# RESULTADO #
#  0           1          2          3          4          5 
# 44.0003102 23.7823599  3.5646520  27.7994393  0.3438641  0.5093745



# SENDO 0 A ENTRADA PARA OS DOCENTES QUE N√O DECLARARARAM RA«A, LOGO A PORCENTAGEM … DE 44,00% A QUANTIDADE DE DOCENTES QUE N√O DECLARARAM COR OU RA«A NO CENSO ESCOLAR #
# SENDO 2 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PRETOS, LOGO A PORCENTAGEM … DE 3,56% A QUANTIDADE DE DOCENTES AUTODECLARADOS PRETOS NO CENSO ESCOLAR  #
# SENDO 3 A ENTRADA PARA OS DOCENTES QUE SE AUTODECLARARAM COMO PARDOS, LOGO A PORCENTAGEM … DE 27,19% A QUANTIDADE DE DOCENTES AUTODECLARADOS PARDOS NO CENSO ESCOLAR #

#P1 È a nova variavel que representa a porcentagem de autodeclarados pretos#

P1 <- 3.56

#P2 È a nova variavel que representa a porcentagem de autodeclarados pardos#

P2 <-  27.19

P1 + P2
# 30.75 #

# A PORCENTAGEM DE AUTODECLARADOS PRETOS OU PARDOS … DE 30,75% #
