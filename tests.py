from bubble import bubble_sort
from heap import heap_sort
from insertion import insertion_sort
from merge import merge_sort
from quick import quick_sort
from selection import selection_sort
import pytest

B = [i for i in range(1, 101, 1)]

def test_bubble():
    A = [i for i in range(100, 0, -1)]
    bubble_sort(A)
    assert A == B

def test_heap():
    A = [i for i in range(100, 0, -1)]
    heap_sort(A)
    assert A == B

def test_insertion():
    A = [i for i in range(100, 0, -1)]
    insertion_sort(A)
    assert A == B

def test_merge():
    A = [i for i in range(100, 0, -1)]
    A = merge_sort(A)
    assert A == B

def test_quick():
    A = [i for i in range(100, 0, -1)]
    quick_sort(A, 0, len(A) - 1)
    assert A == B

def test_selection():
    A = [i for i in range(100, 0, -1)]
    selection_sort(A)
    assert A == B
