"""Решение задачи на определение является ли данная строка палиндромом

На вход дается строка
На выходе: результат сравнения в виде True или False"""


def is_palindrom(vvod):
    left, right = 0, len(vvod) - 1
    while left < right:
        if vvod[left] != vvod[right]:
            return False
        else:
            left += 1
            right -= 1
    return True


def main():
    vvod = input().lower()
    print(is_palindrom(vvod))


if __name__ == '__main__':
    main()
