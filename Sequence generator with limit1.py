'''
The Sequence function creates sequence like '1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 6 6 6 6 6 6'
When len(sequence) == limit generation stops.
'''


def sequence(limit: int, length=1, repeat=0, i=1):
    yield str(i)
    for i in range(2, limit + 1):
        while repeat < i:
            repeat += 1
            length += 1
            yield str(i)
            if length == limit:
                return
        else:
            repeat = 0


def main():
    limit = int(input())
    for item in sequence(limit):
        print(item, end=" ")

 
main()
