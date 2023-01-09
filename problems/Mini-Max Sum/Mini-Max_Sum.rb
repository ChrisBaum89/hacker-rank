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
    max_index = arr.size - 1
    
    min_sum = sorted_arr[0..max_index - 1].sum
    max_sum = sorted_arr[1..max_index].sum
    
    print(min_sum," ", max_sum)
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
