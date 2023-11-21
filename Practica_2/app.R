#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

# Pregunta 2-1
Un histograma con la frecuencia de aparición de los enlaces, pero separado por URLs absolutas (con “http…”) y URLs relativas. El objetivo es ver en un histograma cuantas veces aparece cada URL, pero separando por URLs absolutas y relativas. Un primer paso es añadir a nuestro data.frame una columna indicando qué filas contienen URLs con “http” al inicio y cuáles no, indicando que la URL es absoluta. Después creamos un histograma para cada grupo: en caso de usar gráficos base, creamos un histograma para cada uno, y los juntamos con la función “par”; en caso de lattice o ggplot2, le pasamos los datos y le indicamos qué columna queremos que use para separar los datos.
```{r p1}

```