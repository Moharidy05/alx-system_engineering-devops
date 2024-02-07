#!/usr/bin/env ruby
# Get the argument from the command line - puts = ARGV[0]
# Use the scan method to find all occurrences of "School" - .scan(/School/)
# Join the matches into a single string - .join

puts ARGV[0].scan(/School/).join
