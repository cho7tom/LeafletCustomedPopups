library(shiny)    
library(leaflet)  

shinyServer(function(input, output) {
  
  rand_lng = function(n = 10) rnorm(n, -93.65, .01)
  rand_lat = function(n = 10) rnorm(n, 42.0285, .01)
  data <- as.data.frame(1:10)
  data$lng <- rand_lng()
  data$lat <- rand_lat()
  
  custompopup1 <- c("popup 1", "popup 2", "popup 3", "popup 4", "popup 5", "popup 6", "popup 7", "popup 8", "popup 9", "popup 10")
  
  output$t1 <- renderLeaflet({
    m1 = leaflet() %>% addTiles()
    m1 %>% addMarkers(lng = data$lng, lat = data$lat, 
                     popup = custompopup1
                     )
  })
  
  custompopup2 <- paste0("You selected: ", custompopup1)
  
  output$t2 <- renderLeaflet({
    m2 = leaflet() %>% addTiles()
    m2 %>% addMarkers(lng = data$lng, lat = data$lat, 
                     popup = custompopup2
    )
  })
  
  custompopup3 <- paste0("<div>You selected: ", custompopup1, "</br></br><img src='stacklogo.png' width = '100'/></div>")
  
  output$t3 <- renderLeaflet({
    m3 = leaflet() %>% addTiles()
    m3 %>% addMarkers(lng = data$lng, lat = data$lat, 
                      popup = custompopup3
    )
  })
  
  custompopup4 <- paste0("<div><h3><b>You selected: </b></h3>", custompopup1, "</br></br><img src='stacklogo.png' width = '100'/></div>")
  
  output$t4 <- renderLeaflet({
    m4 = leaflet() %>% addTiles()
    m4 %>% addMarkers(lng = data$lng, lat = data$lat, 
                      popup = custompopup4
    )
  })
  
  i <- 1:10
  # Get rid of the "'" from the variable definition.
  # img <- paste0("'", i, ".png'")
  img <- paste0(i, ".png'")
  custompopup5 <- paste0("<div><h3><b>You selected: </b></h3>", 
                         custompopup1, 
                         "</br></br><center><img src='", 
                         img, 
                         " width = '100'/></center></div>")
  
  output$t5 <- renderLeaflet({
    m5 = leaflet() %>% addTiles()
    m5 %>% addMarkers(lng = data$lng, lat = data$lat, 
                      popup = custompopup5
    )
  })
  
  
  custompopup6 <- "TO BE CONTINUED: how to display insert widget, charts (generated on the fly depending on the popup)"
  
  output$t6 <- renderLeaflet({
    m6 = leaflet() %>% addTiles()
    m6 %>% addMarkers(lng = data$lng, lat = data$lat, 
                      popup = custompopup6
    )
  })
  
})