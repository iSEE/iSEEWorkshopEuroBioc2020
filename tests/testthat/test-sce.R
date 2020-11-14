
test_that("demo_sce throws error if file doesn't exist", {
    
    # assumes the file does not exist at this point
    
    expect_error(
        demo_sce("pbmc3k"),
        "cannot open the connection"
    )
    
})

test_that("demo_sce works if file does exist", {
    
    .simulate_demo_sce("pbmc3k")
    
    expect_s4_class(
        demo_sce("pbmc3k"),
        "SingleCellExperiment"
    )
    
    .remove_demo_sce("pbmc3k")
    
})
