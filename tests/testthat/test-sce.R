

test_that("multiplication works", {
    expect_true(
        iSEEWorkshopEuroBioc2020:::.simulate_demo_sce("pbmc3k")
    )
    
    expect_s4_class(
        demo_sce("pbmc3k"),
        "SingleCellExperiment"
    )
})
