#!/bin/bash


if ! [ -x "$(command -v wget)" ]; then
	echo 'Error: wget is not installed.' >&2
  	exit 1
else

	website = $1 | sed -e 's|^[^/]*//||' -e 's|/.*$||'

	wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains $website --no-parent $1
fi

