import xmlrunner
from openpyxl.styles.builtins import output

def inc(x):
    return x + 1


def test_answer():
    assert inc(4) == 5

testRunner = xmlrunner.XMLTestRunner(output="test_reports")
testRunner.run(test_answer())