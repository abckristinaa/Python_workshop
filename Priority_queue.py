"""Каждая введенная строка задает операцию одного из следующих двух типов:

    Insert x, где 0≤x≤109 — целое число;
    ExtractMax

Первая операция добавляет число x в очередь с приоритетами,
вторая — извлекает максимальное число и выводит его.
"""


import sys


def insert(h, point):
    # Добавление элемента в конец очереди и проверка на выполнение условия с вышестоящим узлом:
    # приоритет вышестоящего узла должен быть выше. Если приоритет ниже, узлы меняются местами.
    h.append(point)
    i = len(h) - 1
    node = i // 2
    while h[node] < h[i]:
        h[node], h[i] = h[i], h[node]
        i = node
        node = i // 2
    else:
        return h


def extractMax(h):
    # Извлечение элемента с максимальным приоритетом (первый элемент в очереди).
    # Мах элемент просеивается вниз до конца через обмен с наибольшим из детей,
    # если после просеивания он не является самым последним элементом, то он меняется местами с самым последним.
    # для узла, на место которого он встал выполняется проверка как при добавлении элемента
    i = 1
    while i * 2 + 1 < len(h):
        left = i * 2
        right = i * 2 + 1
        if h[right] >= h[left]:
            h[right], h[i] = h[i], h[right]
            i = right
        else:
            h[left], h[i] = h[i], h[left]
            i = left
    if h[i] != h[-1]:
        h[i], h[-1] = h[-1], h[i]
        node = i // 2
        while h[node] < h[i]:
            h[node], h[i] = h[i], h[node]
            i = node
            node = i // 2
    return h.pop(-1)


def main():
    h = [10 ** 10]
    for action in sys.stdin.readlines():
        action = action.strip().split()
        if len(action) == 1:
            print(extractMax(h))
        else:
            insert(h, int(action[1]))


if __name__ == "__main__":
    main()
