def merge(left_half, right_half):
    res = []
    i,j = 0,0
    while i < len(left_half) and j < len(right_half):
        if left_half[i] < right_half[j] :
            res.append(left_half[i])
            i += 1
        else :
            res.append(right_half[j])
            j += 1
    res += left_half[i:]
    res += right_half[j:]
    return res
def merge_sort(A):
    if len(A) <= 1 :
        return A
    n = len(A) // 2
    return merge(merge_sort(A[:n]), merge_sort(A[n:]))

