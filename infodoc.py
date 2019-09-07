

def info(x):
    '''this function returns the list of availiable methods with short description'''

    methods = dir(x)
    for method in methods:
        try:
            docs = getattr(x, method).__doc__.split('\n')[0]
        except:
            docs = getattr(x, method).__doc__
        print(method.ljust(20), docs)
