#!/bin/bash/

awk '{gsub(/<insert_regex_here>/, "xxxxx", $NF);}1' generatedData.csv > replaced_4b.csv
awk -F, '{gsub(/<insert_regex_here>/, "xxxxx", $4);}1' replaced_4b.csv > replaced.csv