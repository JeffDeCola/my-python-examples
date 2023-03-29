#!/usr/bin/env python3
# my-python-examples read-file.py


def main():

    print("Method 1 (f.read()) - Read entire file contents into memory")
    f = open('readthis.txt', 'r')
    file_contents = f.read()
    print(file_contents)
    f.close()

    print("Method 2 (f.readlines()) - Read entire file into list")
    with open('readthis.txt') as f:
        file_line_contents = f.readlines()
        print(file_line_contents)
        for line in file_line_contents:
            print(line.rstrip("\n"))
    f.close()


if __name__ == '__main__':
    main()
