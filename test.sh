#!/bin/bash
#This script will generate the release notes from the commits
#It will discard prints oF automatic Merges and Pull Requests commits. 
#It will show all the Commits date wise and sorted

git log $1..$2 --pretty=format:%s
