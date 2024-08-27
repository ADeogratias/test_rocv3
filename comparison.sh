#!/bin/bash

# This script file expects 2 tempaltes and outputs their score as a float64
# The input files is base64 encoded.
# the stdin encoded text are first decoded from base64 to their original format 
# and then used for comparison using roc-compare to compare the 2 templates and out their floating comparison
# 0 means they don't match and 1 means they matcg=h or are identical.


rand=$RANDOM
temp1="template$rand.t"

rand2=$RANDOM
temp2="template$rand2.t"


#input templates (stdin) given for comparison
IFS=' ' read -r -d ' ' template1
IFS=' ' read -r -d '' template2


#decoding of the templates
echo "$template1" | base64 -d > "$temp1"
echo "$template2" | base64 -d > "$temp2"

#compare the 2 templates and output the result
echo "$(./roc-linux-x64-fma3/bin/roc-compare "$temp1" "$temp2")"

#stdout result
#echo $score

#remove created templates 
rm $temp1 $temp2

#uncomment if  logging results is needed
#score="$(./roc-linux-x64-fma3/bin/roc-compare "$temp1" "$temp2")"
#echo -e "$file1:$file2:$score" >> "out/results/comparison/temp_comparison_score_docker.log"
