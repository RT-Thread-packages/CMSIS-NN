#!/bin/bash
grep --color -lr 'setUp' TestCases/ | xargs sed -i 's|void setUp(void)|__attribute__((weak)) void setUp(void)|g'
grep --color -lr 'tearDown' TestCases/ | xargs sed -i 's|void tearDown(void)|__attribute__((weak)) void tearDown(void)|g'
grep --color -lr 'resetTest' TestCases/ | xargs sed -i 's|void resetTest(void)|__attribute__((weak)) void resetTest(void)|g'
grep --color -lr 'verifyTest' TestCases/ | xargs sed -i 's|void verifyTest(void)|__attribute__((weak)) void verifyTest(void)|g'
