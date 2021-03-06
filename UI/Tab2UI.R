tabPanel("Country Comparison",
         value = 2,
         br(),
         br(),
         div(style = "margin-left:40px;", "The",
         tags$b("Country Comparison"), "tab allows users to compare two selected countries' 
         suicide rate adjusted for Age and Sex variables."),
         br(),
         br(),
         fluidRow(div(style = "display:inline-block; vertical-align:top; margin-left:200px;",
           column(4, offset = 1, 
                  selectInput(inputId = "country1",
                              label = "please choose a country", 
                              selected = "New Zealand",
                              choices = unique(suicide_by_age_sex$country), 
                              selectize = FALSE)),   
           column(2, style = "margin-top:25px;",
                  actionButton(inputId = "tick", label = "Update", icon("paper-plane"))),
           column(4, 
                  selectInput(inputId = "country2",
                              label = "please choose a country", 
                              selected = "Australia",
                              choices = unique(suicide_by_age_sex$country), 
                              selectize = FALSE))    
         )),
         br(),
         br(),
         fluidRow( 
           column(5, uiOutput(outputId = "PLOT1")), 
           column(6, uiOutput(outputId = "PLOT2"))         
         )
)