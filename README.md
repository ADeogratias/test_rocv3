# Evaluation of a new fingerprint SDK

This project aims to assess the performance a newly developed fingerprint SDK as a biometric applications. 2 files were created to support with the process of extracting and evaluating the performance of the new SDK ROC V3.

## Requirements
For the following scripts to work there is need to be logged into your simprints account, having access to the docker container that Simprints is using and a github that is logged in. 

## Structure:
	File 1 - Extraction script - This file contains scripts to help with the extraction of templates from a fingerprint image
 	File 2 - Compariron script - This file contains scripts to help with the comparison of 2 different generated templates

## Docker Image

An already existing docker image contains the extractor.sh and compare.sh scripts needed to extract templates and compare them. 

To run the extraction and comparison on syntetic data you can run the following executable

	`./sdk-comparison  --images=file://./synthetic_data/jpegs --image-extraction=./extraction/extractor.sh --template-comparison=./comparison/compare.sh --output="test_"`
 

The extracting script is in the extraction directory and the comparison script is inside the comparison dictory inside the simprints docker image,

The extraction and comparison scripts were added to the initial docker image so they can be used to execute roc v3 commands on synthetic data.

All these scripts usable in the executable `./sdk-comparison` are used to extract, compare and log results larger datasets. The example executable above will allow you to run the executable using the 2 scripts locally while being in the simprints docker container.

This Simprints [github link](https://github.com/Simprints/Biometric-SDK-Comparison) contains all the details about the container and executable's expected output.
