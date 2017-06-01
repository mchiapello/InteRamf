shinyUI(
		navbarPage(includeCSS("www/bootstrap.css"),
		"InteRamf",
        tabPanel("Plot",
				includeMarkdown(file.path("server", "description.md"))),
        tabPanel("Summary",
				sidebarLayout(

				# Sidebar with a slider input
				sidebarPanel(
				  sliderInput("obs",
							  "Number of observations:",
							  min = 0,
							  max = 1000,
							  value = 500)
				),

				# Show a plot of the generated distribution
				  mainPanel(
				    plotOutput("distPlot")
				  )
				)
			   ),
        tabPanel("Table")
        )
)
