Week3 Plotly Presentation Home work 
========================================================
author: Ping Hu
date: 01-07-2019
autosize: true

Requirement for Home Work
========================================================

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

- have data and name
- is a presentation
- interactive, created by plotly

Scattered Plot
========================================================


```r
library(plotly)
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length, type="scatter")
```

![plot of chunk unnamed-chunk-1](Wk3_homework-figure/unnamed-chunk-1-1.png)

styled scattered plot
========================================================

![plot of chunk unnamed-chunk-2](Wk3_homework-figure/unnamed-chunk-2-1.png)
