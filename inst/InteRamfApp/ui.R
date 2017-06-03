shinyUI(
		navbarPage(includeCSS("www/bootstrap.css"),
			tabPanel("InteRamf package",
				includeMarkdown(file.path("server", "description.md"))),
			tabPanel("Data collection",
				splitLayout(cellWidths = 500,
							cellArgs = list(style = "padding: 6px"),
				  includeMarkdown(file.path("server", "description2.md")),
				  includeMarkdown(file.path("server", "description2.md"))
				)),
			tabPanel("Data input",
				sidebarLayout(
				# Sidebar with a slider input
				sidebarPanel(
				  sliderInput("obs",
							  "Number of observations:",
							  min = 0,
							  max = 1000,
							  value = 500)
				),
				fluidRow(
						 column(6, DT::dataTableOutput("pdata")
						)
				# Show a plot of the generated distribution
						 #                   mainPanel(
						 #                     plotOutput("distPlot")
						 #                   )
				)
			)),
			tabPanel("Table")
))
