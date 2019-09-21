'''
Даны две строки. Необходимо найти только те символы,
которые встречаются в обоих словах только один раз
'''


def symbol(c):
    i = 0
    j = 1
    mem = ""
    while j < len(c):
        if c[i] == c[j]:
            mem = c[i]
            i = j + 1
            j = i + 1
        else:
            if c[i] not in mem:
                print(c[i], end=" ")
                i += 1
                j += 1
            else:
                i += 1
                j += 1
                mem = ""
    if c[len(c) - 2] != c[len(c) - 1] and c[len(c) - 1] not in mem:
        print(c[len(c) - 1])


def main():
    a = 'aajuksdfghjkfhkjdhgkjdfghjfjjfjdghksfghslgkslgs;lghs;fgtuhti4uy874yrcoiurchqejhekeg;lkecrhwkjghdfqazxdjhhh-'
    b = 'ajkgh,mnkvbfkjvb;sks;dklfd;slkfdslfdjkf fkfjdlfkfdjlkffgdf354654ffhfd++'
    c = sorted(a + b)
    symbol(c)


if __name__ == "__main__":
    main()