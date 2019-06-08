'''
Modified version of 1.
Separating sequence func and limiter on different functions
'''


def sequence(i=1, repeat=0):
    # unlimited generator of sequence like: 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 6 6 6 6 6 6
    yield str(i)
    i += 1
    while True:
        while repeat < i:
            repeat += 1
            yield str(i)
        else:
            repeat = 0
            i += 1


def limiter(n: int):
    # Get the sequence stop after n steps and print it
    line = ''
    for item in sequence():
        if len(line) < n:
            line += item
        else:
            print(*line)
            return


def main():
    limiter(int(input()))


main()