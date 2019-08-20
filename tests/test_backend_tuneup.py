"""Tests for `backend_tuneup` package."""
import pytest

from kpa_helpers import TestCase


class TestAssignment(TestCase):
    """Tests for `backend_tuneup` assignment."""

    SCRIPT = 'tuneup.py'

    def test_stub(self):
        """Delete this test and create one following example in README.md"""
        error_msg = 'Message displayed on test failure!'
        assert False, error_msg
