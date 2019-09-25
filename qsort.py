'''Вариант реализации быстрой сортировки (Хоара)'''


a = [9, -8, 7, 61, 15, 4, 3, 42, 10]


def qsort(a):
    less, more, equal = [], [], []
    if len(a) <= 1:
        return a
    else:
        m = int((len(a) - 1) // 2)
        for i in range(len(a)):
            if a[i] > a[m]:
                more.append(a[i])
            elif a[i] < a[m]:
                less.append(a[i])
            else:
                equal.append(a[i])
        less = qsort(less)
        more = qsort(more)
        return less + equal + more


qsort(a)
