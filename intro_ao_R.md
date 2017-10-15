Uma Breve Introdução ao R
========================================================
author: Bruna Martini Dalmoro
date: Outubro/2017
autosize: false
font-import: https://fonts.googleapis.com/css?family=Lobster|Raleway
font-family: 'Raleway', sans-serif
transition: linear

<style>
.small-code pre code {
  font-size: 1em;
}
</style>


Quem sou eu?
========================================================
left:35%

![Bruna](perfil.jpg)

*Bruna Martini Dalmoro, 23 anos*

<small>Formanda do Bacharelado em Estatística 2012-2017</small>
***

- <small>Monitora Probabilidade e Estatística - 2012/2
- Bolsista Profª Lisiane Selau - 2013
- Estagiária Meta Instituto de Pesquisas de Opinião - 2014/1 - 2015/2
- Bolsista Coordenadoria de Acompanhamento do Programa de Ações Afirmativas - 2015/2
- Estagiária Siqueira Campos Associados - 2016/1
- Auxiliar Técnica em Estatística Siqueira Campos Associados - 2016/2 - até o momento
</small>


Objetivos
========================================================
left:35%

*“Qual o melhor software estatístico e por que é o R?”*
![R Logo](rlogo.png)
***
- Conhecer melhor a linguagem R
- Entender suas vantagens 
- Breve introdução à linguagem
- Apresentação de algumas ferramentas
- Como saber mais?

<https://github.com/brunamdalmoro/intro_R>


O que é R?
========================================================
type: sub-section

Sobre o R
========================================================
- **Linguagem** de programação focada em estatística e gráficos
- Derivado da linguagem S
- Anos 1990 por Robert Gentleman e Ross Ihaka em Auckland University, Nova Zelândia
- Software livre
- Ambiente estatístico


Mais da história do R: <https://journal.r-project.org/archive/2009-2/RJournal_2009-2_Fox.pdf>

Por que usar o R?
========================================================
type: sub-section

Alguns motivos
========================================================
- Software livre
- Open source
- Multiplataforma
- Comunidade gigantesca que cresce cada vez mais
- Imensidão de funções e pacotes
- Linguagem robusta
- Material infinito na internet
- Flexibilidade
- Reprodutibilidade

*O prazer de rodar um código que você mesmo escreveu não tem preço!*


Vamos começar?
========================================================
type: sub-section

Breve introdução
========================================================
- R Studio
- R como calculadora
- Objetos
- Funções
- Pacotes
- Gráficos

Breve introdução 1
========================================================
title: false

R Studio
-
- Ambiente para desenvolvimento de códigos em R

R como calculadora
-

Objetos
-
- Objeto (numérico, inteiro, texto, fator, lógico...)
- Vetores
- Matrizes
- Data frames


Breve introdução 2
========================================================
title: false

Funções
-
- O que faz acontecer
- São escritas em R
- Você pode criar suas próprias funções!

Pacotes
-
- Conjunto de funções desenvolvidas por uma mesma equipe e disponibilizadas à comunidade
- Você instala uma vez, depois só precisa carregar
- Disponibilizados no CRAN ou no Github

Gráficos (base)
-


Mais?
========================================================
type: sub-section


Outras ferramentas
========================================================
- *ggplot2*
- *leaflet*
- R Markdown
- R Presentations
- R Shiny


ggplot2
========================================================
- *Grammar of graphics*
- Pacote de visualização de gráficos
- Gráficos mais bonitos
- Várias opções de visualização
- Gráficos complexos com apenas uma linha de código

Um tutorial: <http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html>

Exemplo - ggplot2
========================================================
class: small-code


```r
library(ggplot2)

ggplot(data = mtcars) + 
  geom_point(mapping = aes(x = disp, y = mpg, colour = as.factor(am)))
```

![plot of chunk unnamed-chunk-1](intro_ao_R-figure/unnamed-chunk-1-1.png)

leaflet
========================================================
- Mapas no R!
- Completamente interativo
- Simples de fazer
- Adaptável
- Ótimo para adicionar no Shiny e no R Markdown

Material referência: <https://rstudio.github.io/leaflet/>


Exemplo - leaflet
========================================================
class: small-code


```r
library(leaflet)
library(ggmap)

campus.vale <- geocode("UFRGS campus do vale")

leaflet(campus.vale) %>%
    addTiles() %>% 
    addMarkers(popup="Estamos aqui!")
```
![Leaflet map](leafletmap.png)

R Markdown
========================================================
- Belos documentos em diversos formatos 
- Apresenta texto, código e resultados
- Reproduzível
- Foco total no conteúdo

Material de referência: <http://rmarkdown.rstudio.com/lesson-1.html>


R Presentations
========================================================
*Esta apresentação foi construída usando R Presentation!*
-
- Utiliza R Markdown
- Simples e fácil de usar
- Foco no conteúdo
- Customizável usando CSS

Documentação usada: <https://support.rstudio.com/hc/en-us/sections/200130218-R-Presentations>


R Shiny
========================================================
- Desenvolvimento de apps interativos
- UI e Server
- Possibilidade infinitas

Galeria de apps: <http://shiny.rstudio.com/gallery/>

Em meu TCC estou utilizando o R Shiny para construir apps web que auxiliem no ensino de Probabilidade e Esstatística à distância. Dois apps estão online (links provisórios):
- <https://brunamdalmoro.shinyapps.io/Descritivas/>
- <https://brunamdalmoro.shinyapps.io/testes_de_hipteses/>


Como continuar aprendendo?
========================================================
type: sub-section


Alguns links
========================================================
- [Curso-R](http://material.curso-r.com/) (o que mais usei aqui)
- [Try R](http://tryr.codeschool.com/)
- [Quick-R](http://www.statmethods.net/index.html)
- [Stack Overflow](http://stackoverflow.com/)
- [CRAN](https://cran.r-project.org/)
- [R Seek](http://rseek.org/)
- [Google](http://google.com/) (:

Algumas dicas
========================================================
- Mantenha tudo **sempre** atualizado!
- Pratique, pratique, pratique!
- Quanto mais curto, melhor.
- Use e abuse do Google.
- Troque ideias e peça ajuda a colegas.
- Escreva um código como se fosse pra outra pessoa.
- Sempre aprender e descobrir.



Obrigada!
========================================================
type: sub-section

*Sejamos  todos  fluentes  em  R*
