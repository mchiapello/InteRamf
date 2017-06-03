shinyServer(function(input, output) {
	output$plot1 <- renderPlot(plot(cars))
	output$plot2 <- renderPlot(plot(pressure))
	output$pdata <- DT::renderDataTable(cars)
})
