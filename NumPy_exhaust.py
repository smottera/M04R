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
