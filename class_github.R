install.packages("usethis")
library(usethis)

# Set your identity
use_git_config(user.name = "ManjariKiran", user.email = "manjari.hcu@uohyd.ac.in")

# Create a Personal Access Token (PAT) for security
create_github_token() 
# This opens GitHub; generate the token and COPY IT.

# Store the token
gitcreds::gitcreds_set()

edit_git_config()

print("hello")

#dplyr functions
library(dplyr)
#Load in-built dataset mtcars 
data(mtcars)

#Print top 6 rows of mtcars
head(mtcars)
names(mtcars)
#Summary of the dataset
summary(mtcars)

#Select column vs to carb 
subset(mtcars,select=vs:carb)
select(mtcars,vs:carb)

#Filter mtcars for mpg > 20
filter(mtcars, mpg > 20) #using dplyr
subset(mtcars,subset = mpg > 20) #using base

#Filter the cars with 4 gears and more than 20 mpg
filter(mtcars, mpg > 20 & gear == 4)

#Arrange mtcars based on ascending mpg 
arrange(mtcars, mpg) #dplyr

#Arrange mtcars based on descending mpg
arrange(mtcars, desc(mpg))

#Arrange mtcars based on ascending mpg using base package
mtcars[order(mtcars$mpg),] #base package

#Rename am to transmission
rename(mtcars, transmission = am)

#Mutate (MPC) mpg per cylinder

mutate(mtcars, MPC = mpg/cyl) 

#Mutate (MPC) mpg per cylinder and arrange based on descending MPC
mutate(mtcars, MPC = mpg/cyl) %>% arrange(desc(MPC))

#Group_by
group_by(mtcars,gear) %>% summarize(mean(mpg))

#rename am to transmission, group by transmission and 
#print mean of mpg

rename(mtcars, transmission = am) %>% 
    group_by(transmission) %>% summarize(mean(mpg))

#arrange mtcars first by cyl in ascending order and then 
#      by mpg in descending order

