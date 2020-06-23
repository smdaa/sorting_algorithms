def counting_sort(A):
    n = len(A)
    output = [0] * n
    count = [0] * 10
    for i in range(n):
        count[A[i]] += 1
    for i in range(1, 10):
        count[i] += count[i - 1] 
    i = n - 1
    while i >= 0:
        output[count[A[i]] - 1] = A[i]
        count[A[i]] -= 1
        i -= 1
    for i in range(n):
        A[i] = output[i]
