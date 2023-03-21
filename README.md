# Bash Toolbox
Bash scripts developed for automating monotonous and/or complicated work

## Contents
### **update-repos.sh**
Perform one git operation on multiple repos

#### *Description*
Script finds every repository located in subdirectory of current directory (not recursive, one level deep) by checking if `git status` is working there. On every found repository it switches to `main` branch and then performs git operation. Omitting any input will default to `pull` operation.