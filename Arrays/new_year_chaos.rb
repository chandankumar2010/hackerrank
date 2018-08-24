#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumBribes function below.
def minimumBribes(q)
    bribe = 0
    i = q.size()-1
    while i >=0 do
        if q[i]-(i+1) > 2
            puts "Too chaotic"
            return
        end

        j = [0,q[i]-2].max
        while j < i do
            if q[j] > q[i]
                bribe += 1
            end
            j +=1
        end
        i -=1
    end
    puts bribe

end
=begin
t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    q = gets.rstrip.split(' ').map(&:to_i)

    minimumBribes q
end
=end

q = [2,1,5,3,4]

minimumBribes q
