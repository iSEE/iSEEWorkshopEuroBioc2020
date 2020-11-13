FROM iseedevelopers/isee:latest

MAINTAINER kevinrue67@gmail.com
LABEL authors="kevinrue67@gmail.com" \
    description="Docker image containing the iSEE workshop at EuroBioc2020."

WORKDIR /home/rstudio/iseeworkshopeurobioc2020

COPY --chown=rstudio:rstudio . /home/rstudio/iseeworkshopeurobioc2020

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

RUN Rscript -e "knitr::knit('/home/rstudio/iseeworkshopeurobioc2020/vignettes/dataset.Rmd')"
