def extraction(array):
    node = 1
    if len(array) > 4:
        array[1] = array.pop()
        child = int(node * 2 if array[node * 2] >= array[node * 2 + 1] else node * 2 + 1)
    else:
        return array.pop(1)

    while array[node] <= array[child]:
        array[child], array[node] = array[node], array[child]
        node = child
        try:
            child = int(node * 2 if array[node * 2] >= array[node * 2 + 1] else node * 2 + 1)
        except:
            print('Problem')
    return array[1]


def insertion(value, array):
    array.append(value)
    i = len(array) - 1
    if len(array) > 2:
        node = int(i / 2 if i % 2 == 0 else (i - 1) / 2)
        while array[node] < value and node != 0:
            array[node], array[i] = value, array[node]
            i = node
            node = int(i / 2 if i % 2 == 0 else (i - 1) / 2)
        return array
    else:
        return array


def main():
    array = [0]
    for i in range(int(input())):
        command = input().split()
        if "Insert" in command:
            insertion(int(command[1]), array)
        else:
            print(extraction(array))


if __name__ == "__main__":
    main()
