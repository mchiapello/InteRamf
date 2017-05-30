shinyUI(pageWithSidebar(

  # Application title
  titlePanel("", windowTitle = "InteRamf"),
  navbarPage(
			 tabPanel(test,
					  uiOutput("description")
					 ),
  navbarMenu("Data Processing"),
  mainPanel()
))
