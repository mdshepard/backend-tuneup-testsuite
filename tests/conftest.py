"""Conditional fixtures dependent if student or KPA is testing assignment.

Pytest automatically loads fixtures present here and passes them to test
function/methods with the fixture defined as a parameter.
https://docs.pytest.org/en/latest/fixture.html#conftest-py-sharing-fixture-functions
"""

import os

if os.getenv('KENZIE_KPA', 'False') == 'True':
    from .fixtures.kpa import test_cases
else:
    from .fixtures.students import test_cases
