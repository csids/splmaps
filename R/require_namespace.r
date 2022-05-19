require_namespace <- function(pkgs) {
  failure <- c()
  for (i in pkgs) {
    if (!requireNamespace(i, quietly = TRUE)) {
      failure <- c(failure, i)
    }
  }
  if (length(failure) > 0) {
    stop(sprintf("Package(s) %s needed for this function to work. Please install it.", paste0(failure, collapse = ", ")), call. = FALSE)
  }
}
