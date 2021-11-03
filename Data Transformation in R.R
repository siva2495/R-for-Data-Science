
#Load the mpg data set(which alredy available in R)
library(ggplot2)
data(mpg)
view(mpg)

library(tidyverse) #Load Library
#arrage()
mpg_arrange1 = mpg %>% arrange(displ) #Arrange the data on ascending order by arrange() function
view(mpg_arrange1)

mpg_arrange2 = mpg %>% arrange(displ, cty, hwy) #Arrangement based on displ, cty, hwy
view(mpg_arrange2)

mpg_arrange3 = mpg %>% arrange(desc(displ))  # Descending order arrangement
view(mpg_arrange3)

#select()
mpg_select1 = mpg %>% select(displ, cty, hwy) # selecting variables by its name
view(mpg_select1)

mpg_select2 = mpg %>% select(displ : hwy)  #selecting column displ to hwy
view(mpg_select2)

#----------------------------------------------------------------#
#filter()
#load data

data(diamonds) 
view(diamonds)

#explore data
summary(diamonds$carat)

summary(diamonds$price)

table(diamonds$cut)

#filter()
#filter only idleal cut diamonds
diamonds_filter1 = diamonds %>% filter(cut == "Ideal")
view(diamonds_filter1)

# filter ideal & premium cut diamonds
diamonds_filter2 = diamonds %>% filter(cut == c("Ideal", "Premium"))
view(diamonds_filter2)

#filter diamond price above 2500
diamonds_filter3 = diamonds %>% filter(price >2500)
view(diamonds_filter3)

#now we will apply filter in 3 columns: ideal cut, 0.54 carat, & price 1266
diamonds_filter4 = diamonds %>% filter(cut == "Ideal", carat == 0.54, price ==1266)
view(diamonds_filter4)

#more complex filter criteria Ideal cut, between 0.4 and 1.0 carat with price greater than 580.
diamonds_filter5 = diamonds %>% filter(cut == "Ideal",
                                       carat >= 0.54 & carat <= 1.0, price > 580)
View(diamonds_filter5)
