#!/bin/bash

# This script file expects a text encoded in base64 of a jpg image (stdin)
# It convertes the encoding back to jgp image to create a template using roc-represent
# And extracts the quality score from the generated template


rand=$RANDOM
fname="image$rand.jpg" 
tname="template$rand.t"

dir="out/templates out/decoded_images out/results/quality out/results/comparison"

if [[ ! -e "$dir" ]]; then
    mkdir -p $dir
fi

#while [[ -e "${fname}" ]]; do
#       rand=$RANDOM
#       fname="image$rand.jpg"
#       tname="template$rand.t"
#done


base64 -d $1 > "out/decoded_images/$fname" 

./roc-linux-x64-fma3/bin/roc-represent-fingerprint "out/decoded_images/$fname" "out/templates/$tname"

score=`grep -wa "Quality" "out/templates/$tname" | sed 's/.$//' | cut -c 16-` 

base64 "out/templates/$tname" > "out/templates/encondedtemplate$rand"

printf "%s %s" "$(cat out/templates/encondedtemplate$rand)" "$score"

#rm -r "out/"
