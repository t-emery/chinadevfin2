
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chinadevfin2 <a href="https://t-emery.github.io/chinadevfin2/"><img src="man/figures/logo.png" align="right" height="139" alt="chinadevfin2 website" /></a>

<!-- badges: start -->
<!-- badges: end -->

`chinadevfin2` is primarily a data package enabling an efficient method
for working with [AidData’s](https://www.aiddata.org/) [Global Chinese
Development Finance Dataset, Version
2.0](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0)
(GCDF 2.0) in R.

### About the GCDF 2.0 dataset:

[AidData’s](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0)
summary of the dataset:

> AidData’s Global Chinese Development Finance Dataset, Version 2.0.
> records the known universe of projects (with development, commercial,
> or representational intent) supported by official financial and
> in-kind commitments (or pledges) from China from 2000-2017, with
> implementation details covering a 22-year period (2000-2021). The
> dataset captures 13,427 projects worth \$843 billion financed by more
> than 300 Chinese government institutions and state-owned entities
> across 165 countries in every major region of the world. AidData
> systematically collected and quality-assured all projects in the
> dataset using the [2.0 version of our Tracking Underreported Financial
> Flows (TUFF)
> methodology](https://www.aiddata.org/publications/aiddata-tuff-methodology-version-2-0).

Please see the
[AidData’s](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0)
dataset website for full citation details.

If you are unfamiliar with the dataset, the following resources are a
great place to start:

- **AidData - Policy Report**: [Banking on the Belt and Road: Insights
  from a new global dataset of 13,427 Chinese development
  projects](https://www.aiddata.org/publications/banking-on-the-belt-and-road)
- **AidData - Methodology**: [Tracking Underreported Financial Flows
  (TUFF) methodology,
  2.0](https://www.aiddata.org/publications/aiddata-tuff-methodology-version-2-0).
- **AidData - Dataset Website**: [Global Chinese Development Finance
  Dataset, Version
  2.0](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-2-0)

### Relevant Notes

1.  **`chinadevfin2` is still under heavy development**: Please use
    accordingly. The initial phase of package development aims to
    finalize stable versions of the datasets, and will be announced with
    a new package version release and note. Further development will
    focus on building helper functions to aid efficient analysis
    workflows with the dataset.
2.  **`chinadevfin2` is a personal project**: While the package author
    works as a [consultant to
    AidData](https://www.linkedin.com/feed/update/urn:li:activity:7067478837885849600/)
    this package is a personal project with no official affiliation or
    sponsorship from AidData. The author build the package for his own
    own use, but hopes that it can grow into a robust package that can
    aid researchers, policymakers, and others interested in gaining
    actionable, empirically-based insights about Chinese development
    finance lending using the GCDF2 dataset.

## Installation

You can install the development version of chinadevfin2 from
[GitHub](https://github.com/) with:

``` r
# install the `devtools` package if not yet installed
# install.packages("devtools")

# install chinadevfin2 from GitHub
devtools::install_github("t-emery/chinadevfin2")
```

This package will likely never be published on
[CRAN](https://cran.r-project.org/) because the data file sizes are too
big.

## Example

**UNDER DEVELOPMENT**

The core initial functionality of `chinadevfin2` is to load the GCDF2
dataset:

``` r
#library(chinadevfin2)
#library(tibble)
## basic example code
#gcdf2_dataset
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
