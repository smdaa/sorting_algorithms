def bubble_sort(A):
	for i in range(len(A)):
		swap = False
		for j in range(0, len(A) - i - 1):
			if A[j] > A[j+1]:
				A[j], A[j + 1] = A[j + 1], A[j]
				swap = True
		if not swap:
			break
				