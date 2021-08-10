from src.linear_alg import *

def test_np_product():
    s = [1,2,3,0]
    d = [-1,-2,-3,0]
    assert np_product(np.array(s), np.array(d)) == -14.0
