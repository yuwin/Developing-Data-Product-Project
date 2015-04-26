library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
        
        headerPanel("Data Summary View"),
        
        sidebarPanel(
                textInput("caption", "Enter the name of data set:", "swiss"),
                
                selectInput("method", "Some other imformation of the data set:", 
                            choices = c("columns_names", "dimension", "data_class", "columns_type")),
                
                sliderInput("bins",
                            "Number of observations to view:",
                            min = 1,
                            max = 50,
                            value = 10)
                        ),
               
        mainPanel(
                h3(textOutput("caption")), 
                
                verbatimTextOutput("summary"), 
                
                verbatimTextOutput("name"),
                
                tableOutput("view")
        )
))