#' @import data.table
.onAttach <- function(libname, pkgname) {
  version <- tryCatch(
    utils::packageDescription("splmaps", fields = "Version"),
    warning = function(w){
      1
    }
  )

  packageStartupMessage(paste0(
    "splmaps ",
    version,
    "\n",
    "https://docs.sykdomspulsen.no/splmaps"
  ))
}
