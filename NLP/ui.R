#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
suppressPackageStartupMessages({
    library(tidyverse)
    library(stringr)
})


library(shiny)
library(shinyWidgets)

# Define UI for application that draws a histogram


ui <- fluidPage(
        # Application title
        setBackgroundColor(
            color = c("#F8F8FF", "#AFEEEE"),
            gradient = "linear",
            direction = "bottom"
            ),
        titlePanel("Word Prediction Model"),
        p("This is a Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word."),
        
        # Sidebar with a slider input for number of bins 
        sidebarLayout(
            sidebarPanel(
                h2("Instructions:"), 
                h4("1. Enter a word or text in the text box."),
                h4("2. The predicted next word prints below it in red."),
                h4("3. No need to hit enter of submit."),
                h4("4. A question mark means no prediction, typically due to mis-spelling"),
                h4("5. Above the word predictor you can see the most common unigrams bigrams and trigrams
                   after removing the english stopwords"),
                br(),
                a("Source Code", href = "http://github.com/stavoikono/DS-Coursera-Capstone")
            ),
            
            # Show a plot of the generated distribution
            mainPanel(
                textInput("user_input", h3("Your Input:"), 
                          value = "Your words"),
                h3("Predicted Next Word:"),
                h3(em(span(textOutput("ngram_output"), style="color:red"))),
                             img(src = "Rplot1.png"),
                             img(src = "Rplot2.png"),
                             img(src = "plotR3.png"),
                )   
))