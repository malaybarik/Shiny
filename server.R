library(shiny)
CtoF <- function (cent){
  return ((9/5)*cent+32)
}
FtoC <- function (fahr){
  return ((5/9)*(fahr-32))
}

shinyServer(
function(input, output) {
    if ({input$id1} == "C2F"){
      output$Cent <- renderPrint({input$TempIP})
      output$Fah <- renderPrint(CtoF({input$TempIP}))
  }
  if ({input$id1} == "F2C"){
    output$Cent <- renderPrint(FtoC({input$TempIP}))
    output$Fah <- renderPrint({input$TempIP})
  }
}
)
