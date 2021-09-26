library(shiny)
ui <- fluidPage(
    textInput("nameInput", "Cual es tu nombre"),
    actionButton("btn", "Presiona"),
    titlePanel(textOutput("title_panel")),
    title = "ShinyApp"
)
server <- function(input, output, session) {

    observeEvent(input$btn, {
         output$title_panel <- renderText({
            paste0("Hola, ", input$nameInput )
    })
  })

}
shinyApp(ui, server)
