#install.packages("shinydashboard")
library(shinydashboard)

#https://rstudio.github.io/shinydashboard/appearance.html#icons

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Henrique Braga - 330348", tabName="home", icon=icon("home")),
    menuItem("Sobre o aluno", tabName="aluno",  icon = icon("users")),
    hr(),
    menuItem("Introdução ao R", icon = icon('line-chart'),
             startExpanded = TRUE,
             menuSubItem("Introdução ao R", tabName = 'intro')
    ),
    menuItem("Tipos de Dados", icon = icon('line-chart'),
             startExpanded = TRUE,
             menuSubItem("Tipos de Dados", tabName = "data-types")
    ),
    menuItem("Distribuições e Plots", icon = icon('line-chart'),
             startExpanded = TRUE,
             menuSubItem("Distribuições e Plots", tabName = 'distribution-and-plots')
    ),
    menuItem("Clusterização", icon = icon('line-chart'),
             startExpanded = TRUE,
             menuSubItem("KMeans", tabName = 'kmeans'),
             menuSubItem("Dendograma", tabName = "dendogram")
             
    )
  )
)


body <-  dashboardBody(
  tabItems(
    tabItem(tabName = "home",
            h2("Início")
    ),
    tabItem(tabName = "Aluno",
            h2("Sobre"),
            h4("Henrique Braga Albor. Estudante de Inteligência Artificial na FIAP")
    ),
    tabItem(tabName = "intro",
            includeHTML("introducao_r.html")
    ),
    tabItem(tabName = "data-types",
            includeHTML("tipos_dados.html")
    ),
    tabItem(tabName = "distribution-and-plots",
            includeHTML("amostras.html")
    ),
    tabItem(tabName = "kmeans",
            includeHTML("clusterizacao.html")
    ),
    tabItem(tabName = "dendogram",
            includeHTML("dendograma.html")
    )
    
  )
)

dashboardPage( header = dashboardHeader(title = "Portfolio utilizando a linguagem R"),
               skin = "blue",
               sidebar = sidebar,
               body = body
)

