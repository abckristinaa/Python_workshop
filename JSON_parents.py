'''
This program gets json structure [{"name": "A", "parents": []},
                                {"name": "B", "parents": ["A", "C"]},
                                {"name": "C", "parents": ["A"]}]

The output is number of 'name' nodes inherited (directly or not) from every 'parent'.

'''


import json


def task(data, leaf, path):
    for i in range(len(data)):
        if leaf in data[i]['parents']:
            el = data[i]['name']
            path.add(el)
            task(data, data[i]['name'], path)
    return path


def main():
    data = json.loads(input())
    leaves = sorted([data[i]['name'] for i in range(len(data))])

    for leaf in leaves:
        ans = task(data, leaf, path=set())
        print(leaf, ":", len(ans) + 1)


if __name__ == '__main__':
    main()

