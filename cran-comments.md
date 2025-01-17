## Test environments
* Windows Server 2019 (CI (GitHub actions): release 4.1.1 and devel)
* Ubuntu 20.04 (CI (GitHub actions), release 4.1.1 and devel)

## New release 1.3.1

## Breaking changes

* Updated rsyncrosim to be compatible with the new SyncroSim software update (version 2.3).
* Deprecated functions `addPackageFile`, `basePackage`, `deletePackage`, `envInputFolder`, `envOutputFolder`, `envTempFolder`, `envReportProgress`, `envStepSimulation`, `envBeginSimulation`, and `envEndSimulation`.
* Replaced functionality of deprecated functions by adding arguments to functions `addPackage`, `package`, and adding new functions `removepackage`,  `progressBar`, `runtimeInputFolder`, `runtimeOutputFolder`, and `runtimeTempFolder`.

## Bug fixes:

* Fixed cryptic warning message in `saveDatasheet` function.
* Fixed rbind error in `datasheet(..., fastQuery = T)` with multiple scenarios call when different column number of difference scenarios. Now using the more robust `gtools::smartbind` instead.
* Fixed bug where rsyncrosim drops any column with NAs when `datasheet(..., fastQuery=T)`. Now only columns for which all rows are NA are dropped.

## New features:

* New [rsyncrosim website](https://syncrosim.github.io/rsyncrosim/).
* 4 new vignettes/articles that follow the [Enhancing a Package](https://docs.syncrosim.com/how_to_guides/package_enhance_overview.html) tutorial on the [SyncroSim](https://docs.syncrosim.com/index.html) website.
* All vignettes/articles now show outputs.
* Improved documentation of each function with in-depth usage examples.
* Added a `template` argument to the `ssimLibrary` function to allow importing of pre-designed SyncroSim Library templates.
* Modified `summary` argument in the `datasheet` function so when set to `TRUE` will only show Library-specific datasheets. To show all Datasheets, a new input "CORE" must be used.

## Minor improvements and fixes

* Updated copyright headers on all functions

## Upstream dependencies

The SyncroSim software is an upstream dependency as rsyncrosim provides an API for it. 
Therefore, all examples, all tests, as well as vignette code, requires SyncroSim to be 
installed to run. Therefore, all tests in the submitted package should not run 
(tagged with testthat::skip_on_cran()). In addition, all vignettes are only available on the rsyncrosim website and are set to not be included in the package build. Furthermore, examples in the documentation are prevented from being checked using `\donttest{}`.

## R CMD check results

-- R CMD check results ----------------------------------- rsyncrosim 1.3.2 ----
Duration: 1m 20.8s

0 errors v | 0 warnings v | 0 notes v
