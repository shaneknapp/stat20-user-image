#!/usr/bin/env Rscript

# Function to install R packages
install_packages_with_versions <- function(packages) {
  available <- available.packages()
  to_install <- names(packages)[!(names(packages) %in% rownames(installed.packages()))]

  if (length(to_install) > 0) {
    install.packages(to_install, available = available,
                     versions = packages[to_install],
                     dependencies = TRUE)
  } else {
    cat("All packages are already installed.\n")
  }
}

# List of packages to ensure are installed
required_packages <- c("remotes", "devtools")

# Check and install required packages
new_packages <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]
if (length(new_packages) > 0) {
  install.packages(new_packages)
}


packages = list(
    "fivethirtyeight" = "0.6.2",
    "gapminder" = "1.0.0",
    "janitor" = "2.2.1",
    "openintro" = "2.5.0",
    "pagedown" = "0.22",
    "palmerpenguins" = "0.1.1",
    "patchwork" = "1.3.0",
    "showtext" = "0.9-7",
    "swirl" = "2.4.5",
    "tidycensus" = "1.6.7",
    "tidymodels" = "1.2.0",
    "tigris" = "2.1",
    "unvotes" = "0.3.0",
    "xaringanthemer" = "0.4.3",
    "rmarkdown" = "2.29",
    "plotly" = "4.10.4",
    "reshape2" = "1.4.4",
    "kableExtra" = "1.4.0",
    "infer" = "1.0.7",
    "countdown" = "0.4.0",
    "ggrepel" = "0.9.6",
    "ggthemes" = "5.1.0",
    "latex2exp" = "0.9.6",
    "markdown" = "1.13",
    "downlit" = "0.4.4",
    "xml2" = "1.3.6",
    "gt" = "0.11.1",
    "quarto" = "1.4.4",
    "fs" = "1.6.5",
    "rsample" = "1.2.1",
    "IRkernel" = "1.3.2"
)

install_packages_with_versions(packages)

devtools::install_github("mdbeckman/dcData", ref="a900560")
devtools::install_github("hadley/emo@3f03b11")
devtools::install_github("andrewpbray/boxofdata@8afd934")
devtools::install_github("stat20/stat20data@2536a78")
