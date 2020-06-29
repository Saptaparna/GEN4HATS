#!/bin/bash

# use as little of genproductions as possible
git clone --depth 1 --no-checkout https://github.com/cms-sw/genproductions.git 
# setup sparse checkout
cd genproductions
git config core.sparsecheckout true
{
	echo '/Utilities'
	echo '/bin/MadGraph5_aMCatNLO'
	echo '/bin/MadGraph5_aMCatNLO/cards'
        echo '/bin/MadGraph5_aMCatNLO/cards/examples'
	echo '/MetaData'
} > .git/info/sparse-checkout
git read-tree -mu HEAD

