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
      verbatimTextOutput("number")
    )
  )
  
)