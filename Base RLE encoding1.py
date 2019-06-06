'''Second version with tuples'''

import re


def split_encode_series(string):
    pattern = r'((\w)\2*)'
    matches = re.findall(pattern, string)
    res = [(x.count(y), y) for x, y in matches]
    for (x, y) in res:
        print(str(x) + y if x > 1 else y, end="")
    return
    
split_encode_series(input())
