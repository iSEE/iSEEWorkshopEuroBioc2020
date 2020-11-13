<img src="man/figures/Banner-Xmas-1-01.png" align="center" width="100%">

<!-- badges: start -->
[![R build status](https://github.com/iSEE/iSEEWorkshopEuroBioc2020/workflows/build_check_deploy/badge.svg)](https://github.com/iSEE/iSEEWorkshopEuroBioc2020/actions)
[![Codecov.io coverage status](https://codecov.io/github/iSEE/iSEEWorkshopEuroBioc2020/coverage.svg?branch=master)](https://codecov.io/github/iSEE/iSEEWorkshopEuroBioc2020)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/iseedevelopers/isee)](https://hub.docker.com/r/iseedevelopers/iseeworkshopeurobioc2020)
<!-- badges: end -->

# iSEE: Interactive visualization of `SummarizedExperiment` objects <img src="man/figures/logo.png" align="right" width="240" height="278">

# Instructor(s) name(s) and contact information

- Charlotte Soneson (charlotte.soneson@fmi.ch)
- Kevin Rue-Albrecht (kevin.rue-albrecht@imm.ox.ac.uk)
- Federico Marini (marinif@uni-mainz.de)
- Aaron Lun (infinite.monkeys.with.keyboards@gmail.com)

# Key resources

- Docker image: [Docker Hub](https://hub.docker.com/repository/docker/iseedevelopers/iseeworkshopeurobioc2020)
- Workshop: [pgkdown website](https://isee.github.io/iSEEWorkshopEuroBioc2020/)

# Workshop Description

This workshop demonstrates the use of the [_iSEE_](https://bioconductor.org/packages/iSEE/) package to create and configure interactive applications for the exploration of various types of genomics data sets (e.g., bulk and single-cell RNA-seq, CyTOF, gene expression microarray).

This workshop will be presented as a lab session that combines an instructor-led live demo, followed by hands-on experimentation guided by exercises, hints, and comprehensive solutions that participants may continue to use after the workshop.

The instructor-led live demo comprises three parts:

1. Overview of the preprocessed data set used for this workshop.
2. Brief demonstration of graphical user interface and package functionality.
3. Hands-on exercises and discussion.

Participants are encouraged to ask questions at any time during the workshop.

## Pre-requisites

* Basic knowledge of [_R_](https://www.r-project.org/about.html) syntax and the use of data-frames
* Familiarity with the [_SummarizedExperiment_](https://bioconductor.org/packages/SummarizedExperiment) and [_SingleCellExperiment_](https://bioconductor.org/packages/SingleCellExperiment) classes
* Familiarity with the [_shiny_](https://CRAN.R-project.org/package=shiny) CRAN package
* Familiarity with the [_TENxPBMCData_](https://bioconductor.org/packages/TENxPBMCData/) package and [vignette](https://bioconductor.org/packages/release/data/experiment/vignettes/TENxPBMCData/inst/doc/TENxPBMCData.html)

Additional background reading about the programming environment, relevant packages, and example use cases:

* Shiny from RStudio: https://shiny.rstudio.com
* SummarizedExperiment paper: https://www.nature.com/articles/nmeth.3252 (Figure 2)
* iSEE paper: https://f1000research.com/articles/7-741/v1
* "Orchestrating single-cell analysis with Bioconductor", https://www.nature.com/articles/s41592-019-0654-x, Nat Methods 17, 137–145 (2020)
  * https://osca.bioconductor.org, as an online companion to the manuscript above
* The [_iSEEu_](https://bioconductor.org/packages/iSEEu) package for extending the functionality of [_iSEE_](https://bioconductor.org/packages/iSEE/)

## Workshop Participation

Students will participate by following along an [_R markdown_](https://rmarkdown.rstudio.com/) document, and asking questions throughout the workshop.
There is also scope for participants to apply  [_iSEE_](https://bioconductor.org/packages/iSEE/) to their own data sets, and fuel the discussion with more questions about specific use cases.

## _R_ / _Bioconductor_ packages used

1. _iSEE_ : https://bioconductor.org/packages/iSEE
2. _SummarizedExperiment_: https://bioconductor.org/packages/SummarizedExperiment
3. _SingleCellExperiment_: https://bioconductor.org/packages/SingleCellExperiment
4. _scater_: https://bioconductor.org/packages/scater
5. _scran_: https://bioconductor.org/packages/scran
6. _TENxPBMCData_: https://bioconductor.org/packages/TENxPBMCData
7. _BiocSingular_: https://bioconductor.org/packages/BiocSingular

## Time outline

| Activity                                      | Time |
|-----------------------------------------------|------|
| Overview of the example data set.             | 15m  |
| Demonstration of the package functionality    | 15m  |
| Hands on exercises                            | 90m  |

**Total:** 2h

# Workshop goals and objectives

## Learning goals

* Recognize the benefits of integrative data containers such as [`SummarizedExperiment`](https://bioconductor.org/packages/SummarizedExperiment) and [`SingleCellExperiment`](https://bioconductor.org/packages/SingleCellExperiment) for downstream analyses and visualization
* Outline the unique features of [_iSEE_](https://bioconductor.org/packages/iSEE/) built upon the [RStudio Shiny](https://shiny.rstudio.com) framework
* Identify biological data that may be combined into insightful graphical outputs
* Utilize interactive GUI components and layouts to efficiently extract information from biological data sets
* Describe how to construct interactive apps and custom panels

## Learning objectives

* Memorize the key information available in [`SummarizedExperiment`](https://bioconductor.org/packages/SummarizedExperiment) and [`SingleCellExperiment`](https://bioconductor.org/packages/SingleCellExperiment) objects
* Set up a local environment for running [_iSEE_](https://bioconductor.org/packages/iSEE) apps
* Interact with components of the [_iSEE_](https://bioconductor.org/packages/iSEE) user interface to visually inspect and discuss various data sets
* Identify and locate configurable aspects of [_iSEE_](https://bioconductor.org/packages/iSEE) apps
* Practice interactive visualization over a single-cell RNA-sequencing workflow
* Design custom [_iSEE_](https://bioconductor.org/packages/iSEE) panels for advanced use cases
* Imagine use cases and future developments for interactive visualization as part of computational workflows

# Docker setup

In the Docker settings menu:

- Open 'Preferences...'
- Navigate to 'Resources'
- Use the slider to set 'Memory' to '4.00 GB'
- Click 'Apply & Restart'

# Workshop setup

- Run `docker pull iseedevelopers/iseeworkshopeurobioc2020`
- Run `docker run -e PASSWORD=isee -p 8787:8787 -d --rm iseedevelopers/iseeworkshopeurobioc2020`.
  Use `-v $(pwd):/home/rstudio` argument to map your local directory to the container. 
- Log in to RStudio at [http://localhost:8787](http://localhost:8787) using username `rstudio` and password `isee`.
  Note that on Windows you need to provide your localhost IP address like `http://191.163.92.108:8787/` - find it using `docker-machine ip default` in Docker's terminal.
- Run `browseVignettes(package = "iSEEWorkshopEuroBioc2020")`.
  Click on one of the links, "HTML", "source", "R code".
  - In case of `The requested page was not found` error, add `help/` to the URL right after the hostname, e.g., <http://localhost:8787/help/library/iSEEWorkshopEuroBioc2020/doc/iSEE-lab.html>.
  This is a [known bug](https://github.com/rocker-org/rocker-versioned/issues/178).
