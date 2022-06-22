# Template-Scripts
Bash script to make creating projects faster

## Installation
1. Install Github CLI https://github.com/cli/cli#installation
1. Run the following code
```
gh auth login
```
1. Create a template repository (this can change over time and update your repos that use the template)
1. Copy cloneTemplate.sh to the root of your local Code folder
1. Change the github_username variable in the script to your github account
```
github_username=YOUR_ACCOUNT
```
1. Run the script:
```
./cloneTemplate.sh TEMPLATE_NAME NEW_PROJECT
eg: ./cloneTemplate.sh next-admin-template home-search
```

## Usage
View the remote repositories
```
git remote -v
origin  https://github.com/YOUR_ACCOUNT/NEW_PROJECT (fetch) 
origin  https://github.com/YOUR_ACCOUNT/NEW_PROJECT (push) 
upstream        https://github.com/YOUR_ACCOUNT/YOUR_TEMPLATE (fetch)
upstream        no_push (push)
```

Pull the project
```
git pull
or
git pull origin
```

Pull the latest changes to the template
```
git pull upstream main
```

Pushing changes
```
git add . && git commit -m "Initial Commit" && git push -u origin
```
