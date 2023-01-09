#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'matchingStrings' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY strings
#  2. STRING_ARRAY queries
#

#My Psuedocode
# Need to iterate over each string and check if the string agains the others to see if it is contained.

def matchingStrings(strings, queries)
    query_count = []
    count = 0
    
    queries.each do |query|
        strings.each do |string|
            if query == string
                count = count + 1
            end
        end
        query_count << count
        count = 0
    end
    
    query_count

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

strings_count = gets.strip.to_i

strings = Array.new(strings_count)

strings_count.times do |i|
    strings_item = gets.chomp

    strings[i] = strings_item
end

queries_count = gets.strip.to_i

queries = Array.new(queries_count)

queries_count.times do |i|
    queries_item = gets.chomp

    queries[i] = queries_item
end

res = matchingStrings strings, queries

fptr.write res.join "\n"
fptr.write "\n"

fptr.close()