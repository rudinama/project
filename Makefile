PROJECT := reproworkshop
WORKDIR := $(CURDIR)

# list below your targets and their recipies
all:inflation.html

data/raw/inflation.rds: R/download_inflation.R
	Rscript -e "source('$<')"

### Rmd's ###
include .repro/Makefile_Rmds
