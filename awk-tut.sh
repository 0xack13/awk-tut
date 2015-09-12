
awk '{ if (length($0) > max) max = length($0) }
     END { print max }' mail-list

expand mail-list | awk '{ if (x < length($0)) x = length($0) }
                   END { print "maximum line length is " x }'
