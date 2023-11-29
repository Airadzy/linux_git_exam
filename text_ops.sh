#!/bin/bash

$1
FUNCTION_SEARCH=$(grep "function" | wc -l)
echo FUNCTION_SEARCH > output/unique-headers.txt
