#!/bin/bash

whitespace="[[:space:]]"
files=""
for i in "$@"
do
    if [[ ${i} =~ ${whitespace} ]]
    then
	msg=${i}
    else
	files=$(echo "${files} ${i}")
    fi
    done

# gitadd=(git add ${files})
# "${gitadd[@]}"
echo "eval $(git add ${files})"

# gitcommit=
# "${gitcommit[@]}"
eval $(git commit -m \"${msg}\" ${files})
