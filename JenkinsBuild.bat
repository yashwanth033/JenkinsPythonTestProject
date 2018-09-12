SET PATH=%PATH%;%PYTHON_PATH%
python hello.py %
pytest hello.py --junitxml=test_reports/test_report.xml %