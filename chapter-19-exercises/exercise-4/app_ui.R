# Load libraries so they are available
library(shiny)

# We'll begin by defining some of the UI elements as variables
# This helps keep the code organized and easier to debug

# Define a variable `intro_panel` for your first page. It should be a
# `tabPanel()` with a title "Introduction" to represent the first tab.
# This layout will contain the following elements:
intro_panel <- tabPanel(
  # A `titlePanel()` with the text "Income Inequality"
  
  title = "Introduction",
intro_panel("Income Inequality"),
p("The below diagram was created by the New York Times to Illustrate the increasing level of income inequality"),
img(src="inequality.png",alt="Example NYT chart"),
p(a("https://www.nytimes.com/interactive/2017/08/07/opinion/leonhardt-income-inequality.html")))
  
  

# Next, we'll define a few UI elements to render in our second panel
# Define a variable `sidebar_content` as a `sidebarPanel()` UI element
# containing the following information:
sidebar_contet <- sidebarPanel(
  # A `sliderInput()` for the 'percentile' value, labeled "Income Percentile".
  # This slider should let the user pick a range between 0 and 100
  
  sliderInput(inputId = "percentile",label ="income Percentile",min = 0,max = 100,value = c(0,100))
)

#Define a variable `main_content` as a `mainPanel()` UI element
# containing the following information:

main_content <- mainPanel(
  # A `plotOutput()` element showing the 'plot' output (defined in the server)
  plotOutput(outputId = "plot"),
  p("Data from", a(href = " http://gabriel-zucman.eu/usdina/"))
  
)




  # A `plotOutput()` element showing the 'plot' output (defined in the server)


  # A paragraph with a hyperlink to the data source
  # http://gabriel-zucman.eu/usdina/

# Define a variable `growth_panel` for your second page. It should be a
# `tabPanel()` with a title "Growth Chart" to represent the second tab.
# This layout will contain the following elements:

growth_panel <- tabsetPanel(title="growth Chart",titlePanel("Income grwoth 1980-2014"))
  # A `titlePanel()` with the text "Income growth 1980-2014"
  

  # A `sidebarLayout()` to create two columns.
  # The sidebar layout will contain elements:

    # Your `sidebar_content`

    # Your `main_content`
    

# Finally, define a `ui` variable, assigning it a `navbarPage()` layout.
# You will use `shinyUI()` to render this variable (in `app.R`)
# Give the layout a title of "Income Inequality".
# The layout should include the following elements:
# - Your `intro_panel`
# - Your `growth_panel`

