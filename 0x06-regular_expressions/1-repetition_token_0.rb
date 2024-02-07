#!/usr/bin/env ruby
# Get the argument from the command line - puts ARGV[0]
# Use the scan method to find all occurrences of the pattern
# matches the letter "h", followed by a "b", followed by 2 to 5 occurrences of the letter "t", and ends with the letter "n"
puts ARGV[0].scan(/hbt{2,5}n/).join
