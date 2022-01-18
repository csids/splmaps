#' @import data.table ggplot2
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0(
    "splmaps ",
    utils::packageDescription("splmaps")$Version,
    "\n",
    "https://docs.sykdomspulsen.no/splmaps"
  ))
}
