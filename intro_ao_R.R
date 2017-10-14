#-------------------------------------------------------------------------------
#------------------     Uma Breve Introdução ao R       ------------------------
#------------------       Bruna Martini Dalmoro         ------------------------
#------------------           Outubro/2017              ------------------------
#-------------------------------------------------------------------------------

# Oi, isto é um comentário (:

# Você pode escrever qualquer coisa aqui que o R irá ignorar
# Isso é extretamente útil quando está se escrevendo um código :D
# Você pode (e deve) fazer anotações sobre aquilo que está fazendo

Não é uma boa ideia comentar o código dessa maneira!

# O R acha que você está falando com ele e não entende o que você quer
# Por isso, não esqueça do # antes de escrever um comentário (:
# Veremos muitos desses por aqui!
    
## DICA: Caso aqui >> áéíóú << e pelo resto do texto esteja aparecendo símbolos
#        símbolos estranhos em vez de letras acentuadas, no RStudio vá em
#        File > Reopen with Encoding... selecione UTF-8 e clique em OK (:

    
    
#-------------------------------------------------------------------------------
#--- R COMO CALCULADORA ----

5+2

2/4

(5+2)*3-0.5

1+

2

# O R é uma linguagem de programação dinâmica que interpreta o seu código
# enquanto você o executa. 



#-------------------------------------------------------------------------------
#--- OBJETOS  ----

# Existem diversos tipos de objetos no R, de diversas classes. Vou apresentar
# apenas alguns aqui!


# Objeto ------
a <- 5+2
B <- 2/4
c = (a)*3-B

c

## ATENÇÃO: O R diferencia letras maiúsculas e minúsculas, isto é, a é considerado
#           um objeto diferente de A.


# Você também pode armazenar texto em variáveis (:

texticulo <- "Oi, eu sou uma variável de texto, da classe character"

## DICA: Existem diversas classes de objetos no R. Para saber qual a classe de um
#        objeto, use a função class.

class(texticulo)

## DICA: Podemos alterar facilmente a classe de um objeto:
as.character(c)


# Vetor ----------------
v1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
v1*2

v2 <- 1:9 # essa é uma maneira mais fácil de criar o mesmo vetor que v1
# Outra maneira: seq(1,9,1) que quer dizer sequência de 1 até 9 pulando de 1 em 1

v1*v2

## ATENÇÃO: Os elementos de um vetor são sempre da mesma classe. Ou todos são 
#           numéricos, ou são todos character, etc. Não dá para ter um número e 
#           um character no mesmo vetor, por exemplo. 


# Matrizes -------------
m <- matrix(1:6, nrow = 2, ncol = 3)
m

m[3,  ]   # seleciona a terceira linha
m[ , 2]   # seleciona a segunda coluna
m[1, 2]   # seleciona o primeiro elemento da segunda coluna

# Sim, podemos fazer tudo que fazemos em álgebra linear em poucos segundo no R
t(m)      # matriz transposta
m %*% n   # multiplicação matricial
solve(m)  # matriz inversa de m

## ATENÇÃO: Da mesma maneira que acontece com os vetores, os elementos e colunas 
#           de uma matriz são sempre da mesma classe. 


# Data frames ----------
# É uma lista de vetores de mesmo tamanho, podendo conter vetores com diferentes
# classes (diferente de uma matriz).

numerico <- c(2, 3, 5) 
texto <- c("sou", "um", "texto") 
df <- data.frame(numerico, texto) 
df

# Da mesma maneira que em matrizes:
df[3,  ]
df[ , 2]
df[1, 2]

# Ou de outras maneiras:
df["texto"]

df$numerico
df$texto
df$texto[1]



#-------------------------------------------------------------------------------
#--- FUNÇÕES ----

# Algumas funções disponíveis no R --------------

set.seed(2017) # definindo uma semente de números aleatórios pra ser reproduzível

vetor <- rnorm(50) # gerando 50 números aleatórios da normal
vetor

mean(vetor) # média
sd(vetor)   # desvio padrão
sum(vetor)  # somatório
length(vetor) # comprimento do vetor


# você mesmo pode criar sua função! ---------

media <- function(x){
    sum(x)/length(x)
}

media(vetor)

# Caso não saiba como usar uma função, você pode consultar a ajuda do R

?sd

# E pode ver como ela foi construída!

sd


#-------------------------------------------------------------------------------
#--- PACOTES ----

# Pacotes são conjuntos de funções. Para utilizar uma dessas funções, é só instalar
# o pacote dessa maneira:

install.packages("ggplot2")

# E depois carregá-lo sempre que for usar:

library(ggplot2)


#-------------------------------------------------------------------------------
#--- GRÁFICOS ----

# Os gráficos base do R são feios, mas são simples e rápidos de produzir. Para
# uma primeira análise exploratória dos dados, são muito úteis.

# Gerando alguns dados pra fazermos os gráficos
n <- 100
x <- 1:n
y <- 5 + 2 * x + rnorm(n, sd = 30)

# Gráfico de dispersão
plot(x, y, main = "Gráfico de dispersão")

# Gráfico de linha
plot(x, y, type = "l", main = "Gráfico de linha", xlab = "Tempo", ylab = "Variável")

# Histograma
hist(rnorm(1000), breaks = 6)

# G´rafico de barras
data(diamonds, package = "ggplot2")
tabela <- table(diamonds$color)
tabela

barplot(tabela)

# Para gráficos mais bonitos (e até mais complexos), experimente o pacote 
# ggplot2 ou o googleVis (: