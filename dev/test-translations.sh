#!/bin/bash

#set -e
#set -o pipefail

pushd dev

echo "Translating test sentences"
cat test-sentences-quc.txt | apertium -d .. quc-spa > test-sentences-quc-spa.txt

./test-grep.sh

popd

echo "Checking for differences"
git diff --exit-code
