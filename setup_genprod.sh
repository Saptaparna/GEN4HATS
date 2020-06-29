#!/bin/bash

# use as little of genproductions as possible
git clone --depth 1 --no-checkout https://github.com/AndreasAlbert/genproductions.git -b CMSDAS2018_26x
# setup sparse checkout
cd genproductions
git config core.sparsecheckout true
{
	echo '/Utilities'
	echo '/bin/MadGraph5_aMCatNLO'
	echo '!/bin/MadGraph5_aMCatNLO/cards'
	echo '/MetaData'
} > .git/info/sparse-checkout
git read-tree -mu HEAD

