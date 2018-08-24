def twoStrings(s1, s2)
    s1.each_char do |x|
        if s2.include?(x)
            puts "Yes"
            return
        end
    end
    puts "No"
end

s1 = "hello"
s2 = "acd"
twoStrings s1,s2