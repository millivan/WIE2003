# self ordering kiosk
library(shiny)

ui <- fluidPage(
  
  titlePanel("ABCafe"),
  
  sideBarLayout(
    sidebarPanel(
      "Please order", 
      checkboxGroupInput(
        inputId="checkbox",
        label="Menu",
        choiceNames=c("Nasi Goreng", "Mi Goreng", "Maggi Goreng"),
        choiceValues=c(5.00, 5.50, 6.00)
      ),
      submitButton(text="Submit Order"),
      textOutput("number")
    )
  ),
  
  mainPanel()
  
)

server <- shinyServer(function(session, input, output)) {
  output$number<-renderText({
    
    cost=0
    
    nasi_goreng   <- "Nasi Goreng"  %in%  input$checkbox
    mi_goreng     <- "Mi Goreng"    %in%  input$checkbox
    maggi_goreng  <- "Maggi Goreng" %in%  input$checkbox
    
    if(nasi_goreng) cost+=5
    if(mi_goreng)   cost+=5.5
    if(maggi_goreng)cost+=6
    
    return(as.numeric(cost))
  })
}

shinyApp(ui = ui, server = server)