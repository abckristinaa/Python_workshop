'''
Функция rec реализует рекурсивный перебор всех возможных значений 'a', 'b', 'c' в
строке длиной n
Значения могут повторяться в строке.
'''


def rec(a, idx, n):
    if idx == n:
        print(*a)
        return
    else:
        for i in ['a', 'b', 'c']:
            a[idx] = i
            rec(a, idx + 1, n)


def main():
    n = 2
    a = [0 for i in range(n)]
    rec(a, 0, n)


if __name__ == "__main__":
    main()
