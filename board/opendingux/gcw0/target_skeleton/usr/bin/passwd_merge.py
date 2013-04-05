#!/usr/bin/python

# uniq lines by the first field. Last one takes priority.

import sys

lines = {}

for line in sys.stdin:
    fields = line.split(':')
    lines[fields[0]] = fields

for user in lines:
    sys.stdout.write(':'.join(lines[user]))
