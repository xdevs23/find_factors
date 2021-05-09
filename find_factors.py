#!/usr/bin/env python3

import sys

num = int(sys.argv[1])

divisor = 1

while divisor <= num:
    sys.stderr.write("\r\033[K\r{0} / {1}".format(num, divisor))
    sys.stderr.flush()
    if num % divisor == 0:
        sys.stdout.write("\r\033[K\r{0} x {1}\n".format(int(num / divisor), divisor))
        sys.stdout.flush()
    divisor += 1

