'''На вход алгоритму подаётся строка, содержащая символы латинского алфавита. 
Эта строка разбивается на группы одинаковых символов, идущих подряд ("серии"). 
Каждая серия характеризуется повторяющимся символом и количеством повторений. 
Именно эта информация и записывается в код: сначала пишется длина серии повторяющихся символов, 
затем сам символ. У серий длиной в один символ количество повторений будем опускать.

Например, рассмотрим строку

aaabccccCCaB

Разобъём её на серии

aaa b cccc CC a B

После чего закодируем серии и получим итоговую строку, которую и будем считать результатом работы алгоритма.

3ab4c2CaB

Формат ввода:
Одна строка, содержащая произвольные символы латинского алфавита.

Формат вывода:
Строка, содержащая закодированную последовательность.'''


stroka = input()+'.'
x = list(stroka[::-1])
prefix = 1
mem = x.pop()
while x:
    item = x.pop()
    if item == mem:
        prefix += 1
    else:
        print(prefix if prefix != 1 else '', end='')
        print(mem, end='')
        mem = item
        prefix = 1

