#' Demonstration Data Sets
#'
#' @param name Data set identifier. Only `pbmc3k` is available at the moment.
#'
#' @return A `SingleCellExperiment` object.
#' @export
#'
#' @examples
#' # This example only works on the Docker container for the workshop
#' if (interactive()) {
#'     sce <- demo_sce("pbmc3k")
#' }
demo_sce <- function(name = c("pbmc3k")) {
    name <- match.arg(name)
    user_home <- path.expand("~")
    base_file <- sprintf("%s.rds", name)
    file_sce <- file.path(user_home, "iseeworkshopeurobioc2020", "vignettes", base_file)
    sce <- readRDS(file_sce)
    sce
}
