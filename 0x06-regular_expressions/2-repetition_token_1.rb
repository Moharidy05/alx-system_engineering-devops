#!/usr/bin/env ruby
# Get the argument from the command line - puts = ARGV[0]
# Use the scan method to find all occurrences of the pattern - .scan(/hb?t?n/)
# This pattern matches the letter "h", followed optionally by a "b", followed optionally by a "t", and ends with the letter "n"
# Join the matches into a single string - .join

puts ARGV[0].scan(/hb?t?n/).join
