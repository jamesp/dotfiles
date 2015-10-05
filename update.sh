#!/usr/bin/env bash
for i in `ls ~/dotfiles/_*`; do
	filename=`basename $i`
	echo "updating .${filename:1}"
	cp $i ~/.${filename:1}
done