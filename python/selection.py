def selection_sort(A):
    for i in range(len(A)):
        min = i
        for j in range(i+1, len(A)):
            if A[j] < A[min]:
                min = j
        A[min], A[i] = A[i], A[min]