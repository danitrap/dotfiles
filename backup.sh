#!/bin/bash

cd ~/dotfiles || exit

# push to Github
git add .
git commit -m "New backup $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
