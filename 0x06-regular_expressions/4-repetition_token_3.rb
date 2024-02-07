#!/usr/bin/env ruby
# Ruby script accepts one argument and use the scan method to
#+  find all occurrences of the pattern /hbt*n/ within the argument.
# This pattern matches the letter "h", followed by a "b", followed by
#+  zero or more occurrences of the letter "t", and ends with the letter "n".
# The matches are then joined into a single string and outputted using puts

puts ARGV[0].scan(/hbt*n/).join
