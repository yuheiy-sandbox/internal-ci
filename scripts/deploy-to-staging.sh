#!/bin/bash
rm -rf dist/
. scripts/build.sh
rsync -avz --delete dist/ yuhei@ssv4.ryden.co.jp:/www/test.stg2.ryden.co.jp/htdocs/
