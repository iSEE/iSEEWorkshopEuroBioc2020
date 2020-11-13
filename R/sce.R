#' Demonstration Data Sets
#'
#' @param name Data set identifier. Only `pbmc3k` is available at the moment.
#'
#' @return
#' `simulate_demo_sce()` simulates RDS files usually provided in the [Docker container](https://hub.docker.com/r/iseedevelopers/iseeworkshopeurobioc2020).
#' 
#' `demo_sce()` returns a `SingleCellExperiment` object.
#' @export
#'
#' @examples
#' simulate_demo_sce("pbmc3k")
#' sce <- demo_sce("pbmc3k")
demo_sce <- function(name = c("pbmc3k")) {
    name <- match.arg(name)
    user_home <- path.expand("~")
    base_file <- sprintf("%s.rds", name)
    file_sce <- file.path(user_home, "iseeworkshopeurobioc2020", "vignettes", base_file)
    sce <- readRDS(file_sce)
    sce
}

#' @rdname demo_sce
#' @export
#' 
#' @importFrom SingleCellExperiment SingleCellExperiment
simulate_demo_sce <- function(name = c("pbmc3k")) {
    name <- match.arg(name)
    user_home <- path.expand("~")
    base_file <- sprintf("%s.rds", name)
    dir_sce <- file.path(user_home, "iseeworkshopeurobioc2020", "vignettes")
    file_sce <- file.path(dir_sce, base_file)
    # In the Docker container, the file should already exist
    if (!file.exists(file_sce)) {
        dir.create(dir_sce, recursive = TRUE)
        saveRDS(SingleCellExperiment(), file_sce)
    }
    TRUE
}
