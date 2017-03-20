#!/bin/bash

path="/usr/local/bin"
linkPath=$path"/ruler"
realPath=$(pwd)"/ruler.sh"

if [ -L $linkPath ]; then
	rm $linkPath
fi
ln -s $realPath $linkPath
echo "Linked ruler to /usr/local/bin, type \"ruler\" to use."
