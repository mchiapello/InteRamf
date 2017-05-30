shinyServer(function(input, output) {
  source(file.path("server", "description.R"), local = TRUE)$value
})
