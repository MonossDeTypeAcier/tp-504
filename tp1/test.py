import pytest
import fonctions as f
def test_1():
	assert f.puissance(2 ,3) == 8
	assert f.puissance(2 ,2) == 4
def test_2(): 
	assert f.puissance(-2 ,3) == -8
	assert f.puissance(-2 ,2) == 4
	assert f.puissance(2 ,-2) == 0.25
	try:
		x = f.puissance(0,-2)
		assert False
	except ZeroDivisionError:
		assert True
