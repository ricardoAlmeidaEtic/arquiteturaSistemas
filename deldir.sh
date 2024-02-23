#! /bin/bash

dir="script_sample_folder"

echo "Main folder validation"

if ! [ -d "$dir" ]; then
   mkdir $dir
fi

echo "Main folder validation done"

echo "Process folders removal started"
for f in $dir/*; do
    if [ -d "$f" ]; then
	if ! [ -e "${f[0]}" ]; then
	    echo "$f deleted."
	    rm -d "$f"
    	elif [ $1 ]; then
	    echo "$f deleted"
	    rm -d "$f"
	fi
    fi
done

echo "Process folders removal ended"

echo "script ended"
