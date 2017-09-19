
<!-- README.md is generated from README.Rmd. Please edit that file -->
stlData <img src="man/figures/logo.png" align="right" />
========================================================

The `stlData` package contains various datasets representing the City of St. Louis. These datasets are primary designed for teaching statistics, data science, and spatial data analysis using `R`.

Installation
------------

You can install stlData from [Github](https://github.com/chris-prener/stlData) with:

``` r
# install.packages("devtools")
library(devtools)
devtools::install_github("chris-prener/stlData")
```

### Current Data

The package currently contains two data tables:

-   `stlLead` - blood lead level test result data from 2010-2015 via [Reuters](http://www.reuters.com/investigates/special-report/usa-lead-testing/#interactive-lead) and 2015 5-year estimates for demographics (poverty and race) via the American Community Survey
-   `stlMurders` - all murders between 2008 and 2016 via the St. Louis Metropolitan Police Department

Opening data:

``` r
library("stlData")
lead <- stlLead
murders <- stlMurders
```

Additional examples are available in each table's help file:

``` r
?stlLead
```

### Future Data

I am currently working on a set of tables with educational outcomes by school for St. Louis City Public Schools.

If you have data about the City or the metro area that you would like to donate or variables you'd like to see added to a table, open up an issue on the package's [GitHub page](http://github.com/chris-prener/stlData/issues).
