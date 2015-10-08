#!/usr/bin/env bash
# Show the diff of what will be updated by ./update.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR
for i in `ls $DIR/_*`; do
    filename=`basename $i`
    echo "diff for .${filename:1}..."
    git diff ~/.${filename:1} $i
    if [[ $? -eq 0 ]]; then
    	echo "No changes to .${filename:1}"
    fi
done