#!/usr/bin/env ruby
# Ruby script accepts one argument and use the scan method to find
#+   all occurrences of the pattern /[A-Z]*/ within the argument.
# This pattern matches zero or more consecutive uppercase letters.
# The * quantifier specifies zero or more occurrences of the preceding uppercase letter pattern [A-Z].

puts ARGV[0].scan(/[A-Z]*/).join
