#!/usr/bin/env ruby
# Ruby script accepts one argument and use the scan method to
#+  find all occurrences of the pattern /^\d{10,10}$/ within the argument.
# This pattern matches a string that consists of exactly 10 digits.
# The ^ and $ symbols denote the start and end of the string, respectively.
# The {10,10} quantifier specifies that there should be exactly 10 occurrences of the preceding digit pattern \d

puts ARGV[0].scan(/^\d{10,10}$/).join
