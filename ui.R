library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Text Prediction Application"),
  
  sidebarLayout(
    sidebarPanel(
        p("This is a text prediction application for the JHU Data Science Specialization Capstone Project.
          Type in the phrase, the application will return a maximum of best 5 predicted words."),
        h6("View", a("code", href = "https://github.com/shehlit/text_predict"), "on Github", style = "font-size: 11px", align = "right")
    ),
    
    mainPanel(
       textInput("phrase", "Please enter your phrase:"),
       
       tags$strong("The predicted words are:"),
       textOutput("predict_txt")
       
    )
  )
))
