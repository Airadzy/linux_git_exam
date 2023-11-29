#!/bin/bash

# count occurance of keyword function in a given file

FUNCTION_SEARCH=$(grep -o "function" "$1" | wc -l)

echo "FUNCTION_SEARCH Result:$FUNCTION_SEARCH" > output/function-keyword-count.txt

EXTRACT_HEADERS=$(grep -o "^#.*" "$1" | sed "s/^#+ //"| sed 's/^#//; s/^##//')

echo "EXTRACT_HEADERS Result:$EXTRACT_HEADERS" > output/unique-headers.txt

NUMERICAL_VALUES=$(grep -o "[0-9]\+" "$1" | sort -n)

echo "$NUMERICAL_VALUES" > output/sorted-numbers.txt

FEATURE_ITEMS=$(grep -A 8 "^# FEATURES" "$1" | tr -d "\n"| cat)

echo "FEATURE_ITEMS Result:$FEATURE_ITEMS" > output/features-summary.txt

FIND_CALCULATOR=$(grep "calculator" "$1" | sort -r)

echo "FIND_CALCULATOR Result:$FIND_CALCULATOR" > output/calculator-lines.txt

for file in output/*txt; do
	cat "$file"
done

