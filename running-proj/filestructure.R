# day 2 Lynne - changing file structure

# change font viewing size: Tools > global options

?file
files = list.files() # create a variable name for your file list
print(files) # print to screen
# recommended: to move, copy then delete
# copy: "filename", "landing location"
file.copy("gapminderDataFiveYear.txt", "./data/")
getwd()
file.remove("gapminderDataFiveYear.txt") # delete file from current dir
file.exists("a.dat") # check if exists in current dir

# in hist window: git > More > shell
 # keeps shell w/in R project

# SHELL COMMANDS
ls
cd xdirx # change to lower dir
cd .. # up one
rm xfilenamex # remove file from current dir
rmdir xdirx # remove sub-dir from current dir
mkdir xdirx # make sub-dir in current dir
cp xfilenamex xdirx xlocx # copy file to stated loc(dir)
  # use backslashes w/in pathnames for windows:
cp xfilenamex ../dummy\finalfolder
cp xfilenamex ../dummy # ../move up one (not sub-dir but sister dir)

# GIT HUB (online)
# set up new repository online
# in R studio, File > New Project > Version control > Git > enter URL of new repository in Origin box, OK
