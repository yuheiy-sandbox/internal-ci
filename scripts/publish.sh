#!/bin/bash
rm -rf dist/
git clone -b publish https://github.com/yuheiy-sandbox/internal-ci.git dist
find dist/. -type f | grep -v "\.git" | xargs rm
find dist/. -type d | grep -v "\.git" | grep -v "\.$" | xargs rmdir
npm run build
cd dist/
git add --all
git commit -m "Publish"
git push origin publish
