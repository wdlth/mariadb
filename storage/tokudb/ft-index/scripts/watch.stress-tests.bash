#!/bin/bash

watch "date ; awk '{ print \$1, \$3 }' < /tmp/run.stress-tests.log | tail -n 100 | sort -k 2 | uniq -c | sort -k 3 -r -s | head -n10; echo ; echo; echo 'Failing tests:'; grep FAILED /tmp/run.stress-tests.log | sort -k 3 -r -s"
