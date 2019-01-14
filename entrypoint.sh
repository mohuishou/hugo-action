#!/bin/sh
set -e

echo "set git"
git config --global user.email "$EMAIL" 
git config --global user.name "$GITHUB_ACTOR" 

echo "git clone blog"
git clone --recursive https://$GITHUB_ACTOR:$TOKEN@github.com/$GITHUB_REPOSITORY.git blog
cd blog

echo "git clone public"
git clone --recursive https://$GITHUB_ACTOR:$TOKEN@github.com/$GITHUB_ACTOR/$GITHUB_ACTOR.github.io.git public

echo "run hugo"
/hugo

echo "git push"
cd public
echo "auto build by mohuishou/hugo-action in `date`" >> ActionsLog
git add -A && git commit -a -m 'github action auto update'
git push -u origin master

