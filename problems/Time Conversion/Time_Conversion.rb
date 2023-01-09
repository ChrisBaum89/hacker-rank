#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

##My Psuedocode
# get last 2 string letters
# if PM, need to convert 1 = 13, 2 = 14, 3 = 15, so this results in adding 12, and dropping the PM
# if AM, 1 = 1, 2 = 2
# extra case needed is 12am = 0
# extra case needed is 12pm = 12

def timeConversion(s)
    am_or_pm = s[-2..-1]
    hour = s[0..1].to_i
    
    if am_or_pm == "PM" and hour != 12
        hour = hour + 12
        s[0..1] = hour.to_s
    elsif am_or_pm == "AM" and hour == 12
        s[0..1] = '00'
    else
    end
    
    s[0..-3]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
