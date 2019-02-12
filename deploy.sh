#!/bin/bash
rsync -r -e 'ssh -p 9250' --delete-after --quiet $TRAVIS_BUILD_DIR/app shelby@45.27.203.103:/home/shelby/app/tmp
ssh -p 9250 shelby@45.27.203.103
cp tmp/app/app.sh .
./app.sh
