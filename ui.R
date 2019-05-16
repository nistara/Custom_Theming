# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinyrouter)
library(shinyBS)

shinyUI(
  tagList(
    bootstrapPage(NULL, theme = "css/bootstrap.min.css"),#forces BS theme and BS JS libraries to lazy load
    icon(NULL, class = NULL, lib = "font-awesome"),
    tags$head(
      HTML("
           <!-- Global site tag (gtag.js) - Google Analytics -->
           <script async src='https://www.googletagmanager.com/gtag/js?id=UA-79733995-4'></script>
           <script>
           window.dataLayer = window.dataLayer || [];
           function gtag(){dataLayer.push(arguments);}
           gtag('js', new Date());
           gtag('config', 'UA-79733995-4');
           </script>
           "),
      tags$link(rel = "stylesheet", type = "text/css", href = "css/font-awesome.min.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "css/custom.css"),
      tags$link(rel = "stylesheet", href = "https://fonts.googleapis.com/css?family=Lato")
    ),
    tags$script(src='js/fallingsnow_v6.js'),
    div(id="loadingOverlay",
        # HTML("<i id='loadingSpinner' class='fa fa-refresh fa-spin fa-4x fa-fw'></i>")
        HTML('<img id="loadingSpinner" src="img/Text_Start.svg"/>')
    ),
    div(id="snowflakeContainer", HTML('<p class="snowflake">*</p>')),
    router_ui(),
    G_cookiesLB,
    G_piesLB,
    G_breadLB,
    G_calendarLB,
    G_pavlovaLB,
    G_presentsLB,
    G_familyLB,
    G_couchLB,
    G_shoppingLB,
    G_chimneyLB,
    tags$script(src="js/util.js")
  )
)
