#!/bin/bash

github_username=metasaver

function help {
  if [ "$1" ]; then printf "\nError: $1\n\n"; fi
  echo "Usage:

$0 templateUrl newProjectName"
  exit 1
}

if [ -z "$(which git)" ]; then
  echo "Please install git and rerun this script"
  exit 2
fi

if [ -z "$(which hub)" ]; then
  echo "Please install hub and rerun this script"
  exit 3
fi

if [ -z "$1" ]; then help "No git project was specified as a template."; fi
if [ -z "$2" ]; then help "Please provide the name of the new project based on the template"; fi

# git clone "$1" "$2"
git clone https://github.com/"$github_username"/"$1" "$2"
cd "$2"
git remote rename origin upstream
git remote set-url --push upstream no_push

gh repo create "$2" --private
git remote add origin https://github.com/"$github_username"/"$2"
git branch -M master
git push -u origin master

