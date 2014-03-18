## PLOTS: ggplot2 (data frames)
# ggplot 2 can only plot data from data frames

# install once per machine:
install.packages("ggplot2", dependencies=T)

# load at beginning of session:
library(ggplot2)

gDat  <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

# make an plot space with a data frame and axes values
p <- ggplot(gDat, aes(x=gdpPercap, y=lifeExp))

# layers
p <- p+ geom_point()
(p <- p+ geom_point(aes(color=continent), alpha=1/2, size=3) + geom_smooth())

