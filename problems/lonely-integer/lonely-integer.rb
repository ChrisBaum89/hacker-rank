#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.

##My psuedocode
#iterate through array to using .count. If 1 is found, return it

def lonelyinteger(a)
    a.each do |x|
        if a.count(x) == 1
            return x
        end
    end

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = lonelyinteger a

fptr.write result
fptr.write "\n"

fptr.close()