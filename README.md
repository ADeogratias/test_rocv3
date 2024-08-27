The docker image already has the scripts needed to extract templaces and compare them
To run the extraction and comparison on syntetic data you can run the following executable

	`./sdk-comparison  --images=file://./synthetic_data/jpegs --image-extraction=./extraction/extractor.sh --template-comparison=./comparison/compare.sh --output="test_"`

The extracting script is in the extraction directory and the comparison script is inside the comparison dictory inside the simprints docker image,

The extraction and comparison scripts were added to the initial docker image so they can be used to execute roc v3 commands on synthetic data.

