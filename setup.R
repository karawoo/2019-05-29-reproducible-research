# A polite helper for installing packages (borrowed from Hadley Wickham) --

please_install <- function(pkgs, install_fun = install.packages) {
  if (length(pkgs) == 0) {
    return(invisible())
  }
  if (!interactive()) {
    stop("Please run in interactive session", call. = FALSE)
  }

  title <- paste0(
    "Ok to install these packges?\n",
    paste("* ", pkgs, collapse = "\n")
  )
  ok <- menu(c("Yes", "No"), title = title) == 1

  if (!ok) {
    return(invisible())
  }

  install_fun(pkgs)
}

# Do you have all the needed packages? ------------------------------------

tidytools <-  c(
  "tidyverse",
  "rlang",
  "purrr",
  "lubridate",
  "glue",
  "knitr",
  "rmarkdown",
  "usethis",
  "rstudioapi",
  "gapminder",
  "nycflights13"
)

have <- rownames(installed.packages())
needed <- setdiff(tidytools, have)

please_install(needed)

# Do you have the latest RStudio? ---------------------------------------

if (rstudioapi::getVersion() < "1.2.1335") {
  cat("Please install the latest version of RStudio from http://rstd.io/download-ide\n")
}
