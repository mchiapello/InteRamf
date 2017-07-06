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
				# sidebar with a slider input
				sidebarPanel(
							 #                   sliderinput("obs",
							 #                               "number of observations:",
							 #                               min = 0,
							 #                               max = 1000,
							 #                               value = 500)
							 includeText(file.path("server", "del.txt"))
				),
				fluidRow(
						 column(6, DT::dataTableOutput("pdata"))
				)
				)
			),
			tabPanel("Table output"),
			tabPanel("Plots", 
				sidebarLayout(
				# sidebar with a slider input
				sidebarPanel(
							 #                   sliderinput("obs",
							 #                               "number of observations:",
							 #                               min = 0,
							 #                               max = 1000,
							 #                               value = 500)
							 includeText(file.path("server", "del.txt"))
				),
				fluidRow(
						 column(6, DT::dataTableOutput("pdata"))
				)
					 )
			)
		)
)
