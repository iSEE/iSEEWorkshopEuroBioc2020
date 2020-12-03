library(SingleCellExperiment)

.demo_sce_dir <- system.file(package = "iSEEWorkshopEuroBioc2020", 'doc')

.simulate_demo_sce <- function(name = "pbmc3k") {
    base_demo_file <- sprintf("%s.rds", name)
    dir.create(.demo_sce_dir, recursive = TRUE)
    file_sce <- file.path(.demo_sce_dir, base_demo_file)
    saveRDS(SingleCellExperiment(), file_sce)
}

.remove_demo_sce <- function(name = "pbmc3k") {
    base_demo_file <- sprintf("%s.rds", name)
    file_sce <- file.path(.demo_sce_dir, base_demo_file)
    unlink(file_sce)
}
