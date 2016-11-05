### QUESTION 3 ###

#Import the data on the deaths in GoT

#mydir <- "C:\\Users\\Gregory\\Desktop\\Programmation\\Sciences Po\\ProgrammationScPo\\Session7_HW\\data\\"
mydir <- getwd()
mydir <- paste0(mydir, "/gdannay/Session7_HW/data/")
data_deaths <- read.csv(paste(mydir, "character-deaths.csv", sep=""))

### QUESTION 4 ###

#Print the column names

colnames(data_deaths)

## QUESTION 5 ###

# I wasn't able to do it


### QUESTION 6 ###

# I wanted to compute the proportion of men and woman dying
# In order to do this I created a column with the sum of genders and afterwards I would have divided
# it by the number of deaths
# Unfortunately my code does only work when I run it several times and after spending a lot of time
# on it, I still couldn't find the issue

data_deaths$ProportionGender <- 0
data_deaths[['ProportionGender']] <- 0
data_deaths[, 'ProportionGender'] <- 0
last <- dim(data_deaths)[1]
data_deaths[1:1, 'ProportionGender'] <- data_deaths[1:1, 'Gender']
data_deaths$ProportionGender[2:last] <- (data_deaths[2:last, 'Gender'] + data_deaths[1:last-1, 'ProportionGender'])
data_deaths