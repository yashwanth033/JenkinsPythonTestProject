SET PATH=%PATH%;%PYTHON_PATH%
python hello.py %
pytest hello.py --junitxml=test_reports/test_report.xml %
python -m coverage run hello.py%
python -m coverage xml -o coverage.xml %
python -m coverage html -d coverage %
pylint $(find . -maxdepth 1 -name "*.py" -print) MYMODULE/ > pylint.log || exit 0 %
