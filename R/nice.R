
# Author: Charles J. Geyer (charlie@stat.umn.edu)
# released into the public domain (no rights reserved)

get.my.priority <- function() {
    if (.Platform$OS.type == "windows")
        stop("only available in unix")
    .C("get_my_priority", result = integer(1), PACKAGE = "nice")$result
}

set.my.priority <- function(priority = 15) {
    if (.Platform$OS.type == "windows")
        stop("only available in unix")
    .C("set_my_priority", priority = as.integer(priority), PACKAGE = "nice")
    invisible(NULL)
}

