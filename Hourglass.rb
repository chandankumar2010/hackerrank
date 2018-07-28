#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
    i=1
    hourglass = Array.new(16,0)
    begin
        j=1
        begin
            hourglass[i][j] = arr[i-1][j-1]+arr[i-1][j]+arr[i-1][j+1] + arr[i][j] + arr[i+1][j-1]+arr[i+1][j]+arr[i+1][j+1] 
        
            j+=1

        end while j<5
        i+=1
    end while i<5
    puts a.max

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()
