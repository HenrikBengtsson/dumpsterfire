<!-- badges: start -->
[![Build & Install](https://github.com/HenrikBengtsson/dumpsterfire/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/HenrikBengtsson/dumpsterfire/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# dumpsterfire - A Minimal R Package With Tons of Issues 🔥

This is a problematic, installable R package that triggers as many `R CMD check` ERROR:s, WARNING:s, and NOTE:s as possible.


## Challenge

* [ ] Add more check issues to this package


## Rules

1. It must be possible to install the package
2. It must be possible to attach the package with `library(dumpsterfire)`


## Current Status

The most recent `R CMD check` output can be found in the ['status' branch](https://github.com/HenrikBengtsson/dumpsterfire/tree/status).


## Starting Point

Here's a start:

```plain
$ R CMD check dumpsterfire_20260606-1.tar.gz
* checking for file ‘dumpsterfire/DESCRIPTION’ ... OK
* preparing ‘dumpsterfire’:
* checking DESCRIPTION meta-information ... OK
* checking for LF line-endings in source and make files and shell scripts
* checking for empty or unneeded directories
* building ‘dumpsterfire_20260606-1.tar.gz’

* using log directory ‘/home/hb/r-prototypes/dumpsterfire.Rcheck’
* using R version 4.6.0 (2026-04-24)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
* running under: Ubuntu 24.04.4 LTS
* using session charset: UTF-8
* current time: 2026-06-06 16:59:09 UTC
* checking for file ‘dumpsterfire/DESCRIPTION’ ... OK
* this is package ‘dumpsterfire’ version ‘20260606-1’
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘dumpsterfire’ can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking DESCRIPTION meta-information ... WARNING
Non-standard license specification:
  Havoc License (>= 2038)
Standardizable: FALSE
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking code files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... NOTE
boom: no visible global function definition for ‘packageName’
boom: no visible global function definition for ‘packageVersion’
Undefined global functions or variables:
  packageName packageVersion
Consider adding
  importFrom("utils", "packageName", "packageVersion")
to your NAMESPACE file.
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... WARNING
Codoc mismatches from Rd file 'boom.Rd':
boom
  Code: function()
  Docs: function(x = 42)
  Argument names in docs not in code:
    x

* checking Rd \usage sections ... WARNING
Undocumented arguments in Rd file 'boom.Rd'
  ‘x’

Functions with \usage entries need to have the appropriate \alias
entries, and all their arguments documented.
The \usage entries must correspond to syntactically valid R code.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
* checking Rd contents ... NOTE
Rd files without \value:
  ‘boom.Rd’
* checking for unstated dependencies in examples ... OK
* checking examples ... ERROR
Running examples in ‘dumpsterfire-Ex.R’ failed
The error most likely occurred in:

> ### Name: boom
> ### Title: Make noise
> ### Aliases: boom
> 
> ### ** Examples
> 
> boom(3.14)
Error in boom(3.14) : unused argument (3.14)
Execution halted
* checking PDF version of manual ... OK
* DONE

Status: 1 ERROR, 3 WARNINGs, 2 NOTEs
```
