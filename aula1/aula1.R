
# instala o pacote readr
#install.packages("readr")

# abre o pacote readr
library(readr)

# importa a base de dados
dados_bpt1 <- read_csv("https://raw.githubusercontent.com/luisfelipebr/mti/master/dados/dados_bpt1.csv", 
                       locale = locale(encoding = "latin1"))

# visualiza tabela com os dados
View(dados_bpt1)

# exibe as primeiras observacoes
head(dados_bpt1)

# exibe as ultimas observacoes
tail(dados_bpt1)

# exibe o nome das variaveis
names(dados_bpt1)

# exibe a estrutura dos dados
str(dados_bpt1)

# exibe o sumario dos dados
summary(dados_bpt1)

# calcula a mediana da idade
median(dados_bpt1$idade, na.rm = TRUE)

# calcula a media do cr
mean(dados_bpt1$cr, na.rm = TRUE)

# cria tabela dos municipios de residencia
table(dados_bpt1$municipio_de_residencia)

# cria tabela dos municipios de residencia e turno
table(dados_bpt1$municipio_de_residencia, dados_bpt1$turno)

# exporta a base de dados
write_csv(dados_bpt1, path = "D:/OneDrive/@/mti/aula1/dados_bpt1.csv")
