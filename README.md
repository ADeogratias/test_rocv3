# Evaluation of a fingerprint SDK

This project aims to assess the performance a newly developed fingerprint SDK as a biometric applications. 2 files were created to support with the process of extracting and evaluating the performance of the new SDK.

## Structure:
	File 1 - Extraction script - This file contains scripts to help with the extraction of templates from a fingerprint image
 	File 2 - Compariron script - This file contains scripts to help with the comparison of 2 different generated templates

The docker image already has the scripts needed to extract templaces and compare them
To run the extraction and comparison on syntetic data you can run the following executable

	`./sdk-comparison  --images=file://./synthetic_data/jpegs --image-extraction=./extraction/extractor.sh --template-comparison=./comparison/compare.sh --output="test_"`

The extracting script is in the extraction directory and the comparison script is inside the comparison dictory inside the simprints docker image,

The extraction and comparison scripts were added to the initial docker image so they can be used to execute roc v3 commands on synthetic data.

