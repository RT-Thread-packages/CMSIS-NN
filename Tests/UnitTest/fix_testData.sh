#!/bin/bash
grep --color -lr '^const ' TestCases/TestData/ | xargs sed -i 's|^const |static const |g'
