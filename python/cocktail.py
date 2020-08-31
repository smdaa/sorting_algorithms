def cocktail_sort(A):
    swap = True
    end = len(A) - 1
    start = 0
    while(swap):
        swap = False
        for i in range(start, end):
            if (A[i] > A[i + 1]):
                A[i], A[i + 1] = A[i + 1], A[i]
                swap = True
        if not swap:
            break
        swap = False
        end -= 1
        for i in range(end - 1, start - 1, -1):
            if (A[i] > A[i + 1]):
                A[i], A[i + 1] = A[i + 1], A[i]
                swap = True
        start += start  
        