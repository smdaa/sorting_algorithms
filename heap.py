def max_heapify(A, n, i):
	l = 2 * i + 1
	r = 2 * i + 2
	largest = i
	if l < n and A[l] > A[i]:
		largest = l
	if r < n and A[r] > A[largest]:
		largest = r
	if largest != i :
		A[i], A[largest] = A[largest], A[i]
		max_heapify(A, n, largest)
		
def build_max_heap(A):
	n = len(A) 
	for i in range((n - 1) // 2, -1, -1):
		max_heapify(A, n, i)

def heap_sort(A):
	build_max_heap(A)
	for i in range(len(A) - 1, 0, -1):
		A[0], A[i] = A[i], A[0]
		max_heapify(A, i, 0)	

