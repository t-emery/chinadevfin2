
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
    sponsorship from AidData. The author built the package for his own
    own use, but hopes that it can grow into a robust package that can
    aid researchers, policymakers, and others interested in gaining
    actionable, empirically-based insights about Chinese development
    finance lending using the GCDF 2.0 dataset.

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

The core initial functionality of `chinadevfin2` is to load the GCDF 2.0
dataset as a `tibble` using `gcdf2_dataset`:

``` r
# load the chinadevfin2 library
library(chinadevfin2)

# Load the GCDF 2.0 dataset as a tibble
gcdf2_dataset
#> # A tibble: 13,427 × 70
#>    aid_data_tuff_project_id recommended_for_aggrega…¹ umbrella financier_country
#>                       <dbl> <chr>                     <chr>    <chr>            
#>  1                    53631 Yes                       No       China (People's …
#>  2                    53632 Yes                       No       China (People's …
#>  3                    53633 Yes                       No       China (People's …
#>  4                    53634 Yes                       No       China (People's …
#>  5                    53636 Yes                       No       China (People's …
#>  6                    53637 Yes                       No       China (People's …
#>  7                    53644 Yes                       No       China (People's …
#>  8                    53999 Yes                       No       China (People's …
#>  9                    54396 No                        No       China (People's …
#> 10                    56587 Yes                       No       China (People's …
#> # ℹ 13,417 more rows
#> # ℹ abbreviated name: ¹​recommended_for_aggregates
#> # ℹ 66 more variables: recipient <chr>, recipient_region <chr>,
#> #   commitment_year <dbl>, commitment_year_estimated <chr>,
#> #   implementation_start_year <dbl>, completion_year <dbl>, title <chr>,
#> #   description <chr>, staff_comments <chr>, status <chr>, intent <chr>,
#> #   flow_type <chr>, concessional <chr>, flow_class <chr>, sector_code <dbl>, …
```

`gcdf2_data_dictionary` contains AidData’s detailed data definitions for
all 70 columns of the GCDF 2.0:

``` r
# Load the GCDF 2.0 data dictionary as a tibble
gcdf2_data_dictionary
#> # A tibble: 70 × 4
#>    column_name                column_class field_name                description
#>    <chr>                      <chr>        <chr>                     <chr>      
#>  1 aid_data_tuff_project_id   numeric      AidData TUFF Project ID   "This fiel…
#>  2 recommended_for_aggregates character    Recommended For Aggregat… "This fiel…
#>  3 umbrella                   character    Umbrella                  "This fiel…
#>  4 financier_country          character    Financier Country         "This fiel…
#>  5 recipient                  character    Recipient                 "This fiel…
#>  6 recipient_region           character    Recipient Region          "This fiel…
#>  7 commitment_year            numeric      Commitment Year           "This fiel…
#>  8 commitment_year_estimated  character    Commitment Year Estimated "For proje…
#>  9 implementation_start_year  numeric      Implementation Start Year "This fiel…
#> 10 completion_year            numeric      Completion Year           "This fiel…
#> # ℹ 60 more rows
```
