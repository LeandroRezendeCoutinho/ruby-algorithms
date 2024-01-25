# frozen_string_literal: true

# Staircase detail

# This is a staircase of size 4:

#    #
#   ##
#  ###
# ####
# Its base and height are both equal to n.
# It is drawn using # symbols and spaces. The last line is not preceded by any spaces.

# Write a program that prints a staircase of size n.

# Function Description

# Complete the staircase function in the editor below.

# staircase has the following parameter(s):

# int n: an integer
# Print

# Print a staircase as described above.

# Input Format

# A single integer, n, denoting the size of the staircase.

# Constraints

# 0 < n <= 100

# Output Format

# Print a staircase of size n using # symbols and spaces.

# NOTE: The last line must have 0 spaces in it.

# Sample Input

# 6
# Sample Output

#      #
#     ##
#    ###
#   ####
#  #####
# ######
# Explanation

# The staircase is right-aligned, composed of # symbols and spaces, and has a height and width of n = 6.

# !/bin/ruby
#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(num)
  return if num <= 0 || num > 100

  str = ''
  star = 1
  (1..num).each do
    star.times do
      str += '#'
    end
    puts str.rjust(num)
  end
end

# optimized
# def staircase(num)
#   return if num <= 0 || num > 100

#   num.times { |i| puts ('#' * (i + 1)).rjust(num) }
# end

n = 6

staircase n
