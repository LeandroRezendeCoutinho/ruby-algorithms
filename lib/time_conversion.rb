# frozen_string_literal: true

# Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

# NOTE: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

# Example

# s = '12:01:00PM'

# Return '12:01:00'.

# s = '12:01:00AM'

# Return '00:01:00'.

# Function Description

# Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

# timeConversion has the following parameter(s):

# string s: a time in 12 hour format
# Returns

# string: the time in 24 hour format
# Input Format

# A single string s that represents a time in 12-hour clock format (i.e.:hh:mm:ssAM  or hh:mm:ssPM ).

# Constraints

# All input times are valid
# Sample Input 0

# 07:05:45PM

# Sample Output 0

# 19:05:45

# !/bin/ruby

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#
require 'time'

def time_conversion(s)
  time = Time.parse(s)
  time.strftime('%H:%M:%S')
end

s = '04:59:59AM'

result = time_conversion s

puts result
