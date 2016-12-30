library(shiny)

source("predict.R")

shinyServer(function(input, output) {
   
  output$predict_txt <- renderText({
    
    phrase <- input$phrase
    
    predictnextword(phrase)
    
    
  })
  
  
})
