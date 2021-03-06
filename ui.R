library(shiny)
library(shinythemes)
library(leaflet)
library(fontawesome)

# Define UI for application that draws a histogram
navbarPage("iNaturalist heatmap",
           theme = shinytheme("journal"),
    tabPanel("Map",
             div(class = "outer",
                 leafletOutput(outputId = "map"),
                 absolutePanel(id = "controls", class = "panel panel-default", 
                               fixed = TRUE,
                               draggable = TRUE, top = "10%", left = "auto", right = "1%", bottom = "auto",
                               width = 300, height = "auto", cursor = "move", style = "opacity: 0.80; padding: 5px;",
                               uiOutput("choose_query"),
                               uiOutput("type_query"),
                               p("Limit number of the newest observations"),
                               numericInput("num_obs", label = "", value = 200, min = 1, max = 2000000),
                               downloadButton("download_map", 
                                              "Download map"),
                               br(),
                               br(),
                               downloadButton("download_data", 
                                              "Download data table"),
                               br(),
                               br(),
                               p(a(list(icon("github"), "Source code"), href = "https://github.com/Vojczech/iNaturalist_app", target="_blank")),
                               p("Data from", a("iNaturalist", 
                                                href = "https://www.inaturalist.org/", 
                                                target = "_blank"),
                                 "accessed through", 
                                 a("rinat package", 
                                   href = "https://github.com/ropensci/rinat", 
                                   target = "_blank"), 
                                 "by",
                                 a("rOpenSci", 
                                   href = "https://ropensci.org/", 
                                   target = "_blank")
                               )
             )
             )
    ),
    
    tabPanel("About",
             fluidRow(
                 column(12,
                        wellPanel(
                            includeMarkdown("about.md"))
                 )
             )
    )
)