library(shiny)
library(leaflet)

shinyUI(fluidPage(
  
  h1("Customize leaflet popups"),
  
  fluidRow(
    column(width = 6,
           div(
             h3("Example 1: vector of characters: OK"),
             leafletOutput("t1")
             )
           ), 
        
    column(width = 6,
           div(
             h3("Example 2: example 1 + Fixed text: OK"),
             leafletOutput("t2")
             )
           )
    ),
  
  fluidRow(
    column(width = 6,
           div(
             h3("Example 3: example 2 + image: OK but there might be a better approach..."),
             leafletOutput("t3")
           )
    ), 
    
    column(width = 6,
           div(
             h3("Example 4: example 3 + html tags: makes code even weirder and difficult to maintain.."),
             leafletOutput("t4")
           )
    )
  ),
  
  fluidRow(
    column(width = 6,
           div(
             h3("Example 5: example 4 + popup-specific image: KO :-("),
             leafletOutput("t5")
           )
    ), 
    
    column(width = 6,
           div(
             h3("Example 6: images, customed text and charts..: don't know how to proceed :-("),
             leafletOutput("t6")
           )
    )
  )
  )
)