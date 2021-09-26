library(shiny)
ui <- fluidPage(
    textInput("nameInput", "Cual es tu nombre"),  #Crea un input label para poner el nombre
    actionButton("btn", "Presiona"), #Crea el boton
    titlePanel(textOutput("title_panel")), #Define el texto para que se actualice luego de presionar el boton
    title = "ShinyApp" #Titulo de la pagina
)
server <- function(input, output, session) {

    observeEvent(input$btn, {  #Evento que se encarga de ver cuando se presiona el boton
         output$title_panel <- renderText({  #Actualiza el texto antes definido
            paste0("Hola, ", input$nameInput )
    })
  })

}
shinyApp(ui, server)
