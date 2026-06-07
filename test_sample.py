import pytest
from calculator import add

def test_success():
    assert 1 == 1

def test_fail():
    assert 1 == 0, \
    "Test Failed!"