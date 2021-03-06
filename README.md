# PowerPredictiveBiomarker

The tool is for power calculation of predictive biomarker. Calculation requires a series of parameters to to determine subgroup proportion and subgroup censoring rate. Depending on study type (prospective or retrospective study), parameter setting is different (reference: Strategies for power calculations in predictive biomarker studies in survival data; Chen et al; Oncotarget; 2016; in press).

## Features

* The shiny applictaion for power calculation of predictive biomarker generates a statistical plan to justify the sample size

## Installation

Simply run the following from an R console:

```r
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("dungtsa/PowerPredictiveBiomarker",force = TRUE)
```

## Getting Started

```r
require("PowerPredictiveBiomarker")
PowerPredictiveBiomarker.shiny()
```
-------------------------------
Snapshot of shiny app: initial 
![snapshot of shiny app: initial](inst/img/powershiny1.png)

-------------------------------
Snapshot of shiny app: output
![snapshot of shiny app: output](inst/img/powershiny2.png)

-------------------------------
Snapshot of shiny app: output in Word format (through "download" button)
![snapshot of shiny app: output](inst/img/powershiny3.png)
