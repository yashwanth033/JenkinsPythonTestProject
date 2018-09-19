SET PATH=%PATH%;%PYTHON_PATH%
python hello.py %
pytest hello.py --junitxml=test_reports/test_report.xml %
python -m coverage run hello.py%
python -m coverage xml -o coverage.xml %
python -m coverage html -d coverage %
pylint hello.py --max-line-length=120 > pylint.log || true %
