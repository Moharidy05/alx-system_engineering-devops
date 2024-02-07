#!/usr/bin/env ruby
# Ruby script accepts one argument and use the scan method to
#+  find all occurrences of the pattern /^h.n$/ within the argument.
# This pattern matches strings that start with "h", followed by any single
#+  character, and end with "n".
# The ^ and $ symbols denote the start and end of the string, respectively.
# The matches are then joined into a single string and outputted using puts

puts ARGV[0].scan(/^h.n$/).join
