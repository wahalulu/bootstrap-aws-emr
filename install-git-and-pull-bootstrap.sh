#!/bin/bash
set -x -e

# Usage:
# --no-rstudio - don't install rstudio-server
# --sparklyr - install RStudio's sparklyr package
# --sparkr - install SparkR package
# --shiny - install Shiny server
#
# --user - set user for rstudio, default "hadoop"
# --user-pw - set user-pw for user USER, default "hadoop"
# --rstudio-port - set rstudio port, default 8787
#
# --rexamples - add R examples to the user home dir, default false
# --rhdfs - install rhdfs package, default false
# --plyrmr - install plyrmr package, default false
# --no-updateR - don't update latest R version
# --latestR - install latest R version, default false (build from source - caution, may cause problem with RStudio)

sudo yum install -y git
wget --no-check-certificate https://raw.githubusercontent.com/wahalulu/bootstrap-aws-emr/master/rstudio-spark-rhadoop-bootstrap.sh
sh ./rstudio-spark-rhadoop-bootstrap.sh "$@" &

