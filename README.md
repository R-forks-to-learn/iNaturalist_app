# iNaturalist observation data download
App for creating heatmaps of observations from [iNaturalist](https://www.inaturalist.org/).

## Where to try app

There are two options to access the app:
* online web app hosted on [labenvmicro.shinyapps.io](https://labenvmicro.shinyapps.io/TMS_app/) 
* or start your local installation of **R** language and paste following code which automatically downloads prerequisties and starts app:


```
install.packages(c("shiny", "shinythemes", "leaflet", "dplyr", "rinat", "devtools", "htmlwidgets"))
devtools::install_github("rstudio/fontawesome")
library(shiny)
runGitHub("iNaturalist heatmaps", "Vojczech") 
```