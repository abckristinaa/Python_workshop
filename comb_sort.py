array = [10, 1, 21, 3, 4, -5]


def comb_sort(array):
    # вариант реализации сортировки расческой
    # k - расстояние между крайними элементами массива

    k = int(len(array) // 1.247)
    flag = 'uns'
    while k > 0:
        i = 0
        flag = 'sorted'
        while i + k < len(array):
            if array[i] > array[i + k]:
                array[i], array[i + k] = array[i + k], array[i]
                flag = 'uns'
            i += 1
        if k == 1 and flag == 'sorted':
            break
        k = int(k // 1.247)


comb_sort(array)