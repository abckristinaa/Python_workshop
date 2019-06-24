def extraction(array):
    Max = array[1]
    array[1] = array.pop()
    node = 1
    if len(array) > 3:
        child = int(node * 2 if array[node * 2] >= array[node * 2 + 1] else node * 2 + 1)
        while array[node] <= array[child] and child <= len(array):
            temp = array[child]
            array[child] = array[node]
            array[node] = temp
            node = child
            child = int(node * 2 if array[node * 2] >= array[node * 2 + 1] else node * 2 + 1)
        return Max


def insertion(value, array):
    array.append(value)
    i = len(array) - 1
    if len(array) > 2:
        node = int(i / 2 if i % 2 == 0 else (i - 1) / 2)
        while array[node] < value and node != 0:
            temp = value
            array[i] = array[node]
            array[node] = temp
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

