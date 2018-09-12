SET PATH=%PATH%;%PYTHON_PATH%
python hello.py %
pytest hello.py --junitxml=test_reports/test_report.xml %
python -m coverage xml -o coverage.xml %
pylint hello.py --max-line-length=120 pystache > pylint.log || true %