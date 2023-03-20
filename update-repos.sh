#!/bin/bash
path=$1

pushd .

gitOperation=""

read -p "Git operation to perform (default: pull): " gitOperation

gitOperation=${gitOperation:-pull}

for dir in "$path"/*/; do
  cd "$dir"

  git status &> /dev/null

  if [ $? -eq 0 ]; then
    echo -e "\nProcessing $dir"
    git switch main &> /dev/null
    git $gitOperation
  fi

  cd ..
done

popd