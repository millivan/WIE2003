library(shiny)
server <- function(session, input, output) {
  output$number<-renderText({
    
    cost=0
    
    nasi_goreng   <- "Nasi Goreng"  %in%  input$checkbox
    mi_goreng     <- "Mi Goreng"    %in%  input$checkbox
    maggi_goreng  <- "Maggi Goreng" %in%  input$checkbox
    
    if(nasi_goreng)   cost=cost+5
    if(mi_goreng)     cost=cost+5.5
    if(maggi_goreng)  cost=cost+6
    
    paste("Item Price is: ", input$checkbox)
  })
}