# load data from web:
gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)

# read in from compy:
gDat <- read.delim("gapminderDataFiveYear.txt")

# can read a file from a shortcut in your working dir

# data input help page (very useful):
?read.table
# subsets (read.csv, read.delim... have values preset)

# get info about structure of the data
str(gDat)
# similar:
summary(gDat)
head(gDat)
tail(gDat)
names(gDat) # variable names
dim(gDat) # dimenions (rows, cols)
nrow(gDat)
ncol(gDat)
rownames(gDat)
head(rownames(gDat))
length(gDat) # for data.frame (a type of list), outputs # of columns

gDat$lifeExp # view variable (column)
head(gDat$lifeExp) # first 6 values
summary(gDat$lifeExp)
hist(gDat$lifeExp) # histogram

## OBJECT TYPES -- see Jenny's typology slide
class(gDat$lifeExp) # get type of object (factor, numeric, character, logical...)

## FACTORS: store categorical info numerically (see typology slide)
 # each level stored with integer index
str(gDat$country) # names factors then shows integer indeces 
levels(gDat$country) # list levels
nlevels(gDat$country)
table(gDat$country) # output summary data in table form

# SUBSETTING
# subset(Data_to_subset, subset = Object_Name == Value)
subset(gDat, subset= country == "Cambodia")
# make a vector with specified values in an object:
subset(gDat, subset= country %in% c("Cambodia", "Afghanistan"))
#* arguments: subset is for rows, select is for columns:
subset(gDat, subset= year == 1952, select= c(year, country))

# get data for which life expectancy is less than 32 years
a <- subset(gDat, subset= lifeExp<32)
a <- subset(gDat, lifeExp<32)
# assign to object
# how many rows? how many observations per continent?
nrow(a)
table(a$continent) # or: summary(a$continent)

# plots:
plot(lifeExp ~ year, gDat, subset= country=="Cambodia", type="l", main="Cambodia")

# with: temporarily attach
with(gDat, mean(lifeExp))
with(subset(gDat, country=="Cambodia"), cor(lifeExp, gdpPercap))
# or:
cam <- subset(gDat, country=="Cambodia")
with(cam, cor(lifeExp, gdpPercap))

## VECTORS:
# index elements using [ ]
y <- c(1,2,3)
class(y) # numeric vector
x <- c(y, "a", "b")
class(x) # now it's a character vector
x[4] # output the 4th element
x[6] <- "c" # add a 6th element
x[5]  <- "bb" # replace the 5th element

