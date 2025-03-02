#!/bin/bash

# PRODUCTION
git reset --hard
git checkout master
git pull origin master


npm run build
pm2 start "npm run start:prod" --name=playspot-zoom