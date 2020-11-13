

test_that("demo_sce works", {
    expect_true(
        simulate_demo_sce("pbmc3k")
    )
    
    expect_error(
        simulate_demo_sce("pbmc3k")
    )
    
    expect_s4_class(
        demo_sce("pbmc3k"),
        "SingleCellExperiment"
    )
})
