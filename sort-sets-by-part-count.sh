#!/bin/bash
#bash one-liner to look up set numbers from "listb", grab their entries in "sets.csv", then prioritize and sort by parts count

numbers='' ; while read -r col1 _; do numbers+=("$col1"); done < listb; for number in "${numbers[@]}"; do grep "^$number-1" sets.csv | awk -F, '{print $5 " " $1 " " $2}'; done | sort -gr
