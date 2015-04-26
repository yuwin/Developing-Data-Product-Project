library(shiny)
library(datasets)
library(HistData)
shinyServer(function(input, output) {
        
        datasetInput <- reactive({
                #get(input$dataset)
                get(input$caption)
                })
        
        methodInput <- reactive({
                switch(input$method, columns_names = names, dimension = dim, data_class = class, columns_type = str)
        })
        
        output$caption <- renderText({
                input$caption
        })
        
        output$summary <- renderPrint({
                dataset <- datasetInput()
                summary(dataset)
        })
                
        output$name <- renderPrint({
                dataset <- datasetInput()
                method <- methodInput()
                method(dataset)
        })
        
        output$view <- renderTable({
                head(datasetInput(), n = input$bins)
        })
})