#!/usr/bin/env bash
set -euox pipefail

git remote add origin-wiki https://$GITHUB_API_KEY@github.com/turtlecoin/turtlecoin-docs.wiki.git > /dev/null 2>&1
git remote add project-wiki https://$GITHUB_API_KEY@github.com/turtlecoin/turtlecoin.wiki.git > /dev/null 2>&1
git push origin-wiki HEAD:master > /dev/null 2>&1
git push project-wiki HEAD:master > /dev/null 2>&1

echo "Deployed to wiki"