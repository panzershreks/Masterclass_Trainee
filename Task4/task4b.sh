#!/bin/bash
awk -F ',' -v OFS=',' '{gsub(/^([a-zA-Z0-9]){6,7}/, "xxxxx", $4);}1' generatedData.csv > replaced.csv
