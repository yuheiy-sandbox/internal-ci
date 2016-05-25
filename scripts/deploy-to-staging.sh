#!/bin/bash
rm -rf dist/
npm run build
rsync -rlOtcv -vz --recursive --delete dist/ yuhei@ssv4.ryden.co.jp:/www/test.stg2.ryden.co.jp/htdocs/
