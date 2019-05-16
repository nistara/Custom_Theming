
lightboxBtn <- function(id, item){
  htmltools::tagAppendAttributes(item,
                                 'data-toggle'="modal",
                                 'data-target'=paste0("#",id))
}

lightboxBody <- function(id, content){
  div(class="modal fade", id=id, tabindex="-1", role="dialog",
      div(class="modal-dialog modal-lg", role="document",
          div(class="modal-content",
              div(class="modal-header",
                  HTML('<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"> &#x2715;</span></button>')
              ),
              div(class="topic-overview-binding modal-body row",
                  content
              ),
              div(class="modal-footer")
          )
      )
  )
}

createFilterPanel <- function(id, title, ..., collapsed=FALSE, interactive=TRUE){
  if(collapsed)
  {
    titleIcon <-  paste0("")
  }
  else
  {
    titleIcon <-  paste0("")
  }
  
  div(class="panel filter-panel sidebar-underline", id=paste0("sub-filter-area-",id),
      div(class=if(collapsed)"filter-title collapsed" else "filter-title",
          'data-toggle'="collapse", 'data-target'=paste0("#", id),  'href'=paste0("#", id), 
          div(class="col-sm-1 text-center", HTML(titleIcon)),
          div(class="col-sm-offset-1", HTML(title))
      ),
      div(class=if(collapsed)"col-sm-offset-1 filter-body collapse" else "col-sm-offset-1 filter-body collapse in", id=id,
          tagList(...)
      )
  )
}

infoLightboxBtn <- function(id, width=NULL){
  btn <- img(src="img/Icons/Info_btn.svg", class="info-btn", style=
               if(!is.null(width)){paste0("width: ", width, "px;", " height: ", width, "px;")})
  lightboxBtn(id, btn)
}

source("source/pages/app.R")
source("source/pages/app_server.R")

source("source/pages/splash.R")



G_cookiesLB <-  lightboxBody("cookies", div(
  tags$h2("Chocolate chip cookie"), 
  tags$img(class="col-sm-3", src="img/Icons/Treat_cookies.svg"),
  div(class="col-sm-9",
      tags$p("The chocolate chip cookie is a treat that is baked and enjoyed throughout the world. Originating in the United States in 1938, this treat now has many variations and unique recipes that make every chocolate chip cookie a little bit different."),
      tags$p(class="col-sm-12  bold", "Calories per cookie: 75")
  )
  ))
  

G_piesLB <-     lightboxBody("pies", div(
  tags$h2("Mince pies"), 
  tags$img(class="col-sm-3", src="img/Icons/Treat_pies.svg"),
  div(class="col-sm-9",
      tags$p("The original mince pies were created when Middle Eastern methods of cooking were brought back to Britain. The original mice pies contained a mixture of minced meat, suet, a range of fruits, and spices such as cinnamon, cloves and nutmeg. Modern mince pies rarely contain meat and are enjoyed by much of the English-speaking world."),
      tags$p(class="col-sm-12  bold", "Calories per pie: 350")
  ))) 

G_breadLB <-    lightboxBody("bread", div(
  tags$h2("Gingerbread"), 
  tags$img(class="col-sm-3", src="img/Icons/Treat_bread.svg"),
  div(class="col-sm-9",
      tags$p("The term 'Gingerbread' can cover a large range of baked goods, from cakes to crunchy biscuits. Gingerbread has been used as a building block of baking, from creating little gingerbread men, to designing elaborate gingerbread houses."),
      tags$p(class="col-sm-12  bold", "Calories per piece: 160")
  )))

G_calendarLB <- lightboxBody("calendar", div(
  tags$h2("Advent calendar chocolates"), 
  tags$img(class="col-sm-3", src="img/Icons/Treat_calendar.svg"),
  div(class="col-sm-9",
      tags$p("The advent calendar was first used in the 19th century when German's made chalk marks on doors or lit candles to count down to Christmas. Modern advent calendars tend to be a bit tastier, with a piece of chocolate hiding behind 24 cardboard doors in the lead up to Christmas."),
      tags$p(class="col-sm-12  bold", "Calories per piece: 15")
  )))
  
G_pavlovaLB <-  lightboxBody("pavlova", div(
  tags$h2("Pavlova"), 
  tags$img(class="col-sm-3", src="img/Icons/Treat_pavlova.svg"),
  div(class="col-sm-9",
      tags$p("Pavlova is thought to be created in honour of ballerina Anna Pavlova, when she toured Australia and New Zealand in the 1920's. It has been hotly debated for years as to whether the dish originated in Australia or New Zealand. Regardless, the meringue-based dish is now a staple Christmas food in both countries."),
      tags$p(class="col-sm-12  bold", "Calories per cookie: 100")
  )))
  
G_presentsLB <- lightboxBody("presents", div(
  tags$h2("Unwrapping presents"), 
  tags$img(class="col-sm-3", src="img/Icons/Exercise_presents.svg"),
  div(class="col-sm-9",
      tags$p("Make sure to be up nice and early on Christmas morning for this exercise. Unwrapping presents can include many tasks; from speed tearing the paper to lifting that heavy present out from under the Christmas tree."),
      tags$p(class="col-sm-12  bold", "Calories burned per minute: 40")
  )))

G_familyLB <-   lightboxBody("family", div(
  tags$h2("Arguing with family"), 
  tags$img(class="col-sm-3", src="img/Icons/Exercise_family.svg"),
  div(class="col-sm-9",
      tags$p("We all have that family member who has strong opinions that you disagree with. Arguing your point can take a lot of time and energy, especially if you go for the win! Take this exercise to the next level by making wild hand gestures and slamming the door on your way out."),
      tags$p(class="col-sm-12  bold", "Calories burned per minute: 36")
  )))

G_couchLB <-    lightboxBody("couch", div(
  tags$h2("Couch surfing"), 
  tags$img(class="col-sm-3", src="img/Icons/Exercise_couch.svg"),
  div(class="col-sm-9",
      tags$p("Christmas time can include a lot of travel to see friends and family. Ride those waves right into your friends lounge this Christmas and settle down for the night. Couch surfing might not be the most intense exercise but stick to it for the long run to burn those calories!"),
      tags$p(class="col-sm-12  bold", "Calories burned per hour: 300")
  )))

G_shoppingLB <- lightboxBody("shopping", div(
  tags$h2("Last minute shopping"), 
  tags$img(class="col-sm-3", src="img/Icons/Exercise_shopping.svg"),
  div(class="col-sm-9",
      tags$p("Get in before the stores close and make sure you haven’t forgotten last-minute gifts for those relatives you only see once a year. Battle the crowds and don’t forget to make it out of the store before the doors shut on Christmas Eve."),
      tags$p(class="col-sm-12  bold", "Calories burned per hour: 100")
  )))

G_chimneyLB <-  lightboxBody("chimney", div(
  tags$h2("Climbing down the chimney "), 
  tags$img(class="col-sm-3", src="img/Icons/Exercise_chimney.svg"),
  div(class="col-sm-9",
      tags$p("Take a leaf out of Santa's book and add the extreme sport of chimney climbing to your Christmas to-do list. Once you have made it down, be sure to treat yourself to a snooze on the couch."),
      tags$p(class="col-sm-12  bold", "Calories burned per minute: 30")
  )))