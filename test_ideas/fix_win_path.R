# fix windows path

library(rAnaLab)
pa <- "C:\\Apps\\Some\\Other\\Dir\\"
fixed <- fix.path(pa)
print(fixed)

# out <- fix_win_path(pa)
# out