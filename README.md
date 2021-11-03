# R-for-Data-Science
Data transformation in R using tidyverse package

Data Transformation is one of the key aspects for Data Science/Data Analysis/Artificial Intelligence. In this exercise we will see how to transform data in RStudio by using tidyverse package in R. The tidyverse is an opinionated collection of R packages designed for Data Science. All packages share an underlying design philosophy, grammar, and data structure.
Function from dplyr & tidyr packages of tidyverse mostly to do the work of Data Transformation. So, we need to install and load tidyverse package first. Let’s install the package and load it by following code.
install.packages(“tidyverse”)
library(tidyverse)
Most importantly you should remember to load package every time you start your environment. You need not install every time, you should install only once.
These are the functions that we will work on it.
•	arrange()  : to order the observations
•	select()	: to select variables or column
•	filter() : to filter observation by their values
•	gather() : to shift observations from column to row
•	spread() : to shift the variable from row to column
•	group_by() & summarize () : to summarize data into group
•	mutate() : to create a new variable from existing variable
