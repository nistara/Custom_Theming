library(shiny)
library(shinyrouter)
library(readxl)


routes <- c(
  route("/home", pageSplashUI("splash")),
  route("/app", pageAppUI("app"))

)

shinyServer(function(input, output, session) {
  
  #inputID, inputType, valueToUse
  moduleControl <- reactiveValues(
    currentPage=NULL,
    moduleMsg=NULL
  )
  
  router <- make_router(
    routes
  )
  moduleControl$currentPage <- eventReactive(session$input[["_location"]], {
    session$input[["_location"]]
  })
  
  modules <- list(callModule(pageSplash, "splash", "Splash", moduleControl),
                  callModule(pageApp, "app", "App", moduleControl)
                  )
  
  router(input, output)
  
})
