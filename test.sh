#!/bin/bash
#This script will generate the release notes from the commits
#It will discard prints oF automatic Merges and Pull Requests commits. 
#It will show all the Commits date wise and sorted

echo "Features"

git log $1..$2 --pretty=format:%s | grep -i -E "\[ALL\]|\[$3\]" | grep "Feature"

echo "Fixes"
git log $1..$2 --pretty=format:%s | grep -i -E "\[ALL\]|\[$3\]" | grep "Fix"


echo "Misc"
git log $1..$2 --pretty=format:%s | grep -i -E "\[ALL\]|\[$3\]" | grep "Misc"
