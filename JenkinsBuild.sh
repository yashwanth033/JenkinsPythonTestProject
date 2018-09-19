#!/usr/bin/env bash

. ~/usr/bin/python3/bin/activate

set -e
set -x

rm -f pylint.log

PYTHONPATH=.

pytest hello.py --junitxml=test_reports/test_report.xml
python3 -m coverage run hello.py
python3 -m coverage xml -o coverage.xml
python3 -m coverage html -d coverage
pylint hello.py --max-line-length=120 pystache > pylint.log || true
