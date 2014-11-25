shinyUI(pageWithSidebar(
  headerPanel(h2("Temparature Conversion Application")),
  sidebarPanel(
  radioButtons(inputId = "id1", h3("Choose the temaprature connversion option"), 
               c("Centegrade to Fahrenheit" = "C2F", 
                 "Fahrenheit to Centigrade" = "F2C")),
  numericInput(inputId = "TempIP", 'Input Temparature', 0, min = -273, max = 1000, step = 0.1),
  submitButton("Submit")
  ),  
  mainPanel(
    h3('Temparature'),
    h4('Centigrade'),
    verbatimTextOutput("Cent"),
    h4('Fahrenheit'),
    verbatimTextOutput("Fah")    
    )
))