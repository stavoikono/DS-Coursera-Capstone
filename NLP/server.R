

library(shiny)
source("ngram.R", local=TRUE)


server <- function(input, output) {
    
    output$ngram_output <- renderText({
        ngrams(input$user_input)
    })
    
}

