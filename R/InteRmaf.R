##' InteRamf: a friendly graphical user interface for Ramf package
##'
##' @title InteRamf
##' @return A webpage to interact with Ramf
##' @author Marco Chiapello
##' @example
##' InteRamf()
##' @import methods utils stats Ramf shiny

InteRamf <- function(){
	open <- runApp(system.file("InteRamfApp", package = "InteRamf"),
						  launch.browser = TRUE)
	return(invisible(open))
}
