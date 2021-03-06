#! /usr/bin/env bash
set -xe
if [ $TOX_ENV == "coverage" ]
then
  pip install coveralls
  tox -e py27-unittests
  coveralls
else
  tox -e $TOX_ENV
fi
