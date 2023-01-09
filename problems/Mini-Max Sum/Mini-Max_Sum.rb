#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

#My Psuedocode
# The min will never include the max value
# the max will never inclue the min value
# sort array so min is 1st, max is last
# create a min array without the last (max) value
# create a max array withou the first (min) value
# sum each array and output

def miniMaxSum(arr)
    sorted_arr = arr.sort
    min_arr = sorted_arr.clone
    min_arr.pop
    max_arr = sorted_arr.clone
    max_arr.shift
    
    min_sum = min_arr.sum
    max_sum = max_arr.sum
    
    print(min_sum," ", max_sum)
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
