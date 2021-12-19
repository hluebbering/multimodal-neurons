library(htmltools)
library(pagedown)


footer <- div(
  style = "font-size: 8pt; text-align: right; width: 100%; padding-right: 18pt; 
  position: absolute; margin-left: 190mm;", 
  " " #  span(class = "pageNumber"), "/", span(class = "totalPages")
)

header <- div(
  style = "text-align: right; width: 100%; padding-right: 0.75in; padding-top: 18px; color: #777777; font-family: Times New Roman; font-size: 9pt; opacity: 0.75;",
  "Luebbering, ", span(class = "pageNumber")
)

pagedown::chrome_print(
  "Main.Rmd", 
  options = list(
    displayHeaderFooter = TRUE, 
    footerTemplate = format(footer, indent = FALSE),
    headerTemplate = format(header, indent = FALSE),
    preferCSSPageSize = TRUE
    
  )
)
