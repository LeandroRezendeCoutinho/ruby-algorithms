# frozen_string_literal: true

# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# For example, the square matrix  is shown below:

# 1 2 3
# 4 5 6
# 9 8 9
# The left-to-right diagonal = . The right to left diagonal = . Their absolute difference is .

# Function description

# Complete the  function in the editor below.

# diagonalDifference takes the following parameter:

# int arr[n][m]: an array of integers
# Return

# int: the absolute diagonal difference
# Input Format

# The first line contains a single integer, , the number of rows and columns in the square matrix .
# Each of the next  lines describes a row, , and consists of  space-separated integers .

# Constraints

# Output Format

# Return the absolute difference between the sums of the matrix's two diagonals as a single integer.

# Sample Input

# 3
# 11 2 4
# 4 5 6
# 10 8 -12
# Sample Output

# 15
# Explanation

# The primary diagonal is:

# 11
#    5
#      -12
# Sum across the primary diagonal: 11 + 5 - 12 = 4

# The secondary diagonal is:

#      4
#    5
# 10
# Sum across the secondary diagonal: 4 + 5 + 10 = 19
# Difference: |4 - 19| = 15

# !/bin/ruby

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

arr = [[3],
       [11, 2, 4],
       [4, 5, 6],
       [10, 8, -12]]

def diagonal_difference(arr) # rubocop:disable Metrics/MethodLength,Metrics/AbcSize
  max_length = internal_arrays_max_length(arr)
  filtered_array = arr.select { |x| x.length == max_length }

  first_results = []
  index = 0
  filtered_array.each do |x|
    first_results << x[index]
    index += 1
  end

  second_results = []
  index = 0
  filtered_array.reverse_each do |x|
    second_results << x[index]
    index += 1
  end

  (first_results.sum - second_results.sum).abs
end

# fazer o método pegar o maior array que tenha mais de um array
def internal_arrays_max_length(arr)
  y = 0 if y.nil?
  arr.each do |x|
    y = x.length if x.length > y
  end
  y
end

result = diagonal_difference arr

puts result
