## Jenny B

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

## index elements using [ ]

x <- c(1,2,3)
class(x) # numeric vector
x <- c(x, "a", "b")
class(x) # now it's a character vector (numbers converted to text)
x[4] # output the 4th element
x[6] <- "c" # add a 6th element
x[5]  <- "bb" # replace the 5th element

# create and print to console: put ( ) around command
(y <- 1:3)
(z <- 3:7)
# math operations
y+z # elemnet-wise, recycling shorter vector
y*2 # each element is multiplied by 2

## more indexing

x <- -3:3
# create logical vector w/ T or F for each element of x
x<0

(x <- round(rnorm(8), 2))
names(x) <- letters[1:8] # or letters[seq_long(x)]
# output element named "g"
x["g"]
x[c("a", "b", "e")]
# output name and value of 4th element
x[4]
# neg index: report everything but 7th element:
x[-7]
# subset
x[x<0]
# logical vector
x<0
# names and indeces of Trues for statement
which(x<0)
# get every other element of x - options:
x[seq(1,length(x),2)] # from 1 to length of x, by 2 => odds
x[seq(2, length(x), by=2)] # evens
x[seq(length(x)) %% 2 ==0] # evens
x[c(F,T)] # evens
x[c(T,F)] # odds

## MATRIX

month.abb # abbrev months, char vector length 12
month.name # month names, char, length 12
(xx <- cbind(month.abb, month.name)) # bind by columns to make matrix
(xx <- rbind(month.abb, month.name)) # bind by rows to make matrix

# create data frame, create month.num for 1st col, keep identity (class type -- Inhibit forcing to simpler format, eg factor) of month.abb and month.name
(x <- data.frame(month.num=1:12, I(month.abb), I(month.name)))
# output item in row 2, col 3
x[2,3]

