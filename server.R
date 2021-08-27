routes <- c(
  route("/home", pageSplashUI("splash")),
  route("/app", pageAppUI("app"))

)

shinyServer(function(input, output, session) {
  router <- make_router(
    routes
  )

  # callModule(pageSplash, "splash")
  callModule(pageApp, "app")
  
  router(input, output)
  
})
