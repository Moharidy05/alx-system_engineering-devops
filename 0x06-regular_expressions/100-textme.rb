#!/usr/bin/env ruby
# Ruby script accepts one argument and use the scan method to find
#+  all occurrences of the pattern /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/ within the argument.
# This pattern matches strings in the format [from:...] [to:...] [flags:...], where the ... represents any content.
# The .*? syntax is a non-greedy match that captures any characters between the specified delimiters
# # Join the matches into a single string separated by commas - .join(",")

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
