test_that("multiplication works", {
    # Simulate the situation in the Docker container
    user_home <- path.expand("~")
    dir_sce <- file.path(user_home, "iseeworkshopeurobioc2020", "vignettes")
    file_sce <- file.path(dir_sce, "pbmc3k.rds")
    # In the Docker container, the file should already exist
    if (!file.exists(file_sce)) {
        dir.create(dir_sce, recursive = TRUE)
        saveRDS(SingleCellExperiment(), file_sce)
    }
    
    expect_s4_class(
        demo_sce("pbmc3k"),
        "SingleCellExperiment"
    )
})
