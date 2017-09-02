import numpy

#print(numpy.abs(-3))

def QuickSort(arr):
    if len(arr) <=1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x<pivot]
    middle = [x for x in arr if x==pivot]
    right = [x for x in arr if x>pivot]
    return QuickSort(left) + middle + QuickSort(right)

#print(QuickSort([1,2,3,3,1,8,8,5,3,2]))

#print(type(arr))

stringToPrint = "%d %d %f %s %s" % (-10.6, 10.6, -22.7123123,"lol",'lolol')
print(stringToPrint)

arr = numpy.array([[1.2,3,5]])

print(numpy.random.random((999,999)))

bool_idx = (arr > 2)   # Find the elements of a that are bigger than 2;
                     # this returns a numpy array of Booleans of the same
                     # shape as a, where each slot of bool_idx tells
                     # whether that element of a is > 2.

print(bool_idx)      # Prints "[[False False]
                     #          [ True  True]
                     #          [ True  True]]"

print(arr[bool_idx])  # Prints "[3 4 5 6]"

# We can do all of the above in a single concise statement:
print(arr[arr > 2])     # Prints "[3 4 5 6]"

x = numpy.array([[1,2],[3,4]], dtype=numpy.float64)
y = numpy.array([[5,6],[7,8]], dtype=numpy.float64)
#####################################################################################
# Elementwise sum; both produce the array
# [[ 6.0  8.0]
#  [10.0 12.0]]
print(x + y)
print(numpy.add(x, y))

# Elementwise difference; both produce the array
# [[-4.0 -4.0]
#  [-4.0 -4.0]]
print(x - y)
print(numpy.subtract(x, y))

# Elementwise product; both produce the array
# [[ 5.0 12.0]
#  [21.0 32.0]]
print(x * y)
print(numpy.multiply(x, y))

# Elementwise division; both produce the array
# [[ 0.2         0.33333333]
#  [ 0.42857143  0.5       ]]
print(x / y)
print(numpy.divide(x, y))

# Elementwise square root; produces the array
# [[ 1.          1.41421356]
#  [ 1.73205081  2.        ]]
print(numpy.sqrt(x))
###################################################################
x = numpy.array([1, 2])   # Let numpy choose the datatype
print(x.dtype)         # Prints "int64"

x = numpy.array([1.0, 2.0])   # Let numpy choose the datatype
print(x.dtype)             # Prints "float64"

x = numpy.array([1, 2], dtype=numpy.int64)   # Force a particular datatype
print(x.dtype)

