#!/bin/bash

# author: Austin McCullough
# last modified: 11-29-2022 Austin McCullough
# 
# description: Recursively calls FreeSurfer::mri_convert on every instance of an .mgz file within the current directory 
# 
# dependencies: FSL, FreeSurfer
# inputs: none
# outputs: none

# 

find . -type f -name "*.mgz" | while read -r file; do
	BASENAME=$(basename "$file")
	DIRNAME=$(dirname "$file")
	NOEXT=$(basename "$file" .mgz)
	
	echo "converting $BASENAME"
	mri_convert ${DIRNAME}/${BASENAME} $DIRNAME/${NOEXT}.nii.gz
	
done