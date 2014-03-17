# R studio shortcuts:
# <-  alt-minus
# auto-complete: tab- opens drop-down of options
 # if hit F1 w/ the drop-down, opens help in bottom-right window

# dbl-click on line in History (up-right window) to type it into console
 # ctrl-click to hilite several
 # click 'to source' to add commands to current script (or open new if none)
b <- seq(from=15, to=70, length.out=332)
cc <- seq(15, 70, length.out=332)
# from script, ctrl-Enter runs the current script line in the console
 # hilite section of script, ctrl-Ent to run the selection
# in script window, source runs all commands
 # and puts actual command in History
# script window, far right button: make Html page of script and plot
# File > new project - separate set for env (workspace), working dir, etc 

# print current plot: 
dev.print(pdf, "plot.pdf") # (ext, "filename")
dev.print(png, "cambodia.png")



