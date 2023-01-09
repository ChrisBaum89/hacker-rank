#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    pos_count = 0
    neg_count = 0
    zero_count = 0
    
    arr.each do |x|
        if x > 0
            pos_count = pos_count + 1
        elsif x < 0
            neg_count = neg_count + 1
        else
            zero_count = zero_count + 1
        end
    end
    
    puts(pos_count.to_f / arr.size)
    puts(neg_count.to_f / arr.size)
    puts(zero_count.to_f / arr.size)
    
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr

## challenge completed on 1/9/2023