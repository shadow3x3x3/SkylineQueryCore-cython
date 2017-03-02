cpdef dominate_check(attrs_1, attrs_2):
    """
    This is skyline query core method that is for
    dominating compare.
    """
    cdef int check_flag = len(attrs_1)
    cdef int flag = 0
    for i, attr in enumerate(attrs_1):
        if attr > attrs_2[i]:
            flag += 1
        elif attr < attrs_2[i]:
            flag -= 1
        else:
            check_flag -= 1

    if flag == check_flag:
        return -1
    elif flag == 0 - check_flag:
        return 1
    return 0