"""Fixtures for KPA grading. Students do not use or see this file."""
import random

import pytest

EXAMPLE_TESTCASES = (
    {'input': [], 'output': []},
)

TEST_CASES = {
    'example': EXAMPLE_TESTCASES,
}


@pytest.fixture
def test_cases(cases=TEST_CASES):
    def get_test_cases(test, count=None):
        return random.choices(cases[test], k=count)

    return get_test_cases
