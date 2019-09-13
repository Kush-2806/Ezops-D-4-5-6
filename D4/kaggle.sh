python3 < train.csv > output1.csv -c '
import csv
import sys

for r in csv.reader(sys.stdin):
  r.reverse()
  csv.writer(sys.stdout).writerow(r)
'

cat train.csv | awk -F, '{for(i=1; i<NF; i=i+2) printf("%s%s", $i, FS); print ""}' > output2.csv

