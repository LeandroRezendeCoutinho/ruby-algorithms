# frozen_string_literal: true

# In this challenge, you are required to calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.

# Function Description

# Complete the aVeryBigSum function in the editor below. It must return the sum of all array elements.

# aVeryBigSum has the following parameter(s):

# int ar[n]: an array of integers .
# Return

# long: the sum of all array elements
# Input Format

# The first line of the input consists of an integer .
# The next line contains  space-separated integers contained in the array.

# Output Format

# Return the integer sum of the elements in the array.

# Constraints

# Sample Input

# 5
# 1000000001 1000000002 1000000003 1000000004 1000000005
# Output

# 5000000015
# Note:

# The range of the 32-bit integer is .
# When we add several integer values, the resulting sum might exceed the above range.
# You might need to use long int C/C++/Java to store such sums.

# !/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'aVeryBigSum' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER_ARRAY ar as parameter.
#

def a_very_big_sum(ar) # rubocop:disable Naming/MethodParameterName
  ar.sum
end

ar = [1_000_000_001, 1_000_000_002, 1_000_000_003, 1_000_000_004, 1_000_000_005]

result = aVeryBigSum ar

puts result
