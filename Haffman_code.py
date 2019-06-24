import heapq
from collections import Counter, namedtuple


class Node(namedtuple("Node", ["left", "right"])):
    def walk(self, code, acc):
        self.left.walk(code, acc + "0")
        self.right.walk(code, acc + "1")


class Leaf(namedtuple("Leaf", ["char"])):
    def walk(self, code, acc):
        code[self.char] = acc


def haffman_encode(s):
    Counter(s)
    h = [(freq, Leaf(ch)) for ch, freq in Counter(s).items()]
    heapq.heapify(h)
    while len(h) > 1:
        freq1, left = heapq.heappop(h)
        freq2, right = heapq.heappop(h)
        heapq.heappush(h, (freq1 + freq2, Node(left, right)))

    [(_freq, root)] = h

    code = {}
    return code


def main():
    s = input()
    code = haffman_encode(s)
    encoded: str = "".join(code[ch] for ch in s)
    print(len(code), len(encoded))
    for ch in sorted(code):
        print("{}: {}".format(ch, code[ch]))
    print(encoded)


main()
