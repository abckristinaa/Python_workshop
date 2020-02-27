"""
Example of usage in terminal: python3 email_generator.py 1000

1000 is how many emails do you need.
500 is default.
"""

from random import choice, sample
import string
import sys


def generate_namelist(min_length=2, max_length=8, items=20) -> list:
    namelist = []
    alphabet = string.ascii_lowercase + string.digits
    for i in range(items):
        length = choice(range(min_length, max_length))
        namelist.append("".join(sample(alphabet, length)))
    return namelist


def generate_emails(names: list) -> list:
    domains = ['yandex.ru',
               'gmail.com',
               'mail.ru',
               'outlook.com',
               'yahoo.com',
               'rambler.ru',
               'epam.com']

    return [f"{i}@{choice(domains)}" for i in names]


def write_in_file(emails_list, filename):
    with open(filename, "w") as f:
        for mail in emails_list:
            f.write(mail + '\n')
    print(f"{N} entries are written. Check 'emails.txt' in current directory")


if __name__ == "__main__":
    try:
        N = int(sys.argv[1])
    except IndexError:
        N = 500

    emails = generate_emails(generate_namelist(items=N))
    write_in_file(emails, filename="emails.txt", )
