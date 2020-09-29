#! /bin/bash 

docpad clean

docpad generate --env static

s3cmd sync out/ s3://mind-and-reality.butterfill.com --add-header "Cache-Control: max-age=86400"
