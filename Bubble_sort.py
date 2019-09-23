''' Два варианта реализации пузырьковой стортировки'''


array = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]


def simple(array):
    # минимальное количество инструкций
    # количество последних элементов, равное количеству пройденных циклов i считаются уже отсортированными
    # и повторно не проверяются
    for i in range(len(array) - 1):
        j = 0
        while j < len(array) - 1 - i:
            if array[j] > array[j + 1]:
                array[j], array[j + 1] = array[j + 1], array[j]
            j += 1
        return


def alternative(array):
    # каждый раз сравниваются все элементы пока за весь цикл не будет произведено ни одной замены
    changed = True
    while changed:
        changed = False
        for i in range(len(array) - 1):
            if array[i] > array[i+1]:
                array[i], array[i+1] = array[i+1], array[i]
                changed = True
    return