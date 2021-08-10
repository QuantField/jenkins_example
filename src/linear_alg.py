from typing import Optional
import numpy as np 

def np_product(a: np.array, b:np.array) -> Optional[float]:
    if a.shape!=b.shape:
        print('Vectors must have same size')
        return None
    else:
        return np.dot(a,b)

if __name__=='__main__':
    x = np.array([1,2,2])
    y = np.array([-2,1,2])

    print(np_product(x,y))
