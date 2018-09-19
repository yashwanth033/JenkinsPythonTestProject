#!/usr/bin/env python3
set -xe
python3 hello.py
pytest hello.py --junitxml=test_reports/test_report.xml
python3 -m coverage run hello.py
python3 -m coverage xml -o coverage.xml
python3 -m coverage html -d coverage
pylint hello.py --max-line-length=120 pystache > pylint.log || true
