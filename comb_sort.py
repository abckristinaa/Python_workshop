array = [10, 1, 21, 3, 4, -5]


def comb_sort(array):
    # вариант реализации сортировки расческой
    # k - расстояние между крайними элементами массива

    k = int(len(array) // 1.247)
    while k:
        i = 0
        while i + k < len(array):
            if array[i] > array[i + k]:
                array[i], array[i + k] = array[i + k], array[i]
            i += 1
        k = int(k // 1.247)
    return array


comb_sort(array)