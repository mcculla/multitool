#!/bin/bash

# author: Austin McCullough
# last modified: 10-31-2022 Austin McCullough
# description:
# inputs:
# outputs:

find . -type f -name "*.4dfp.ifh" | while read -r file; do
	BASENAME=$(basename "$file")
	DIRNAME=$(dirname "$file")
	NOEXT=$(basename "$file" .4dfp.ifh)
	
	echo "converting $BASENAME using nifti_4dfp"
	nifti_4dfp -n $DIRNAME/$BASENAME $DIRNAME/$NOEXT.nii.gz
	
done