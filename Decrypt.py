from simplecrypt import decrypt


def read_encrypted(password, filename):
    with open(filename, "rb") as inp:
        encrypted = inp.read()
        plaintext = decrypt(password, encrypted)
        return plaintext.decode('utf8')


def main():
    with open("passwords.txt", "r") as ps:
        for password in ps.readlines():
            try:
                data = read_encrypted(password.strip(), 'encrypted.bin')
                print(data)
            except:
                print("Something goes wrong...")

main()