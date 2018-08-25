def sherlockAndAnagrams(s)
    x = File.open("../IO/output.txt","w")
   counter = Hash.new(0)
   i=0
   while i < s.length
    j=i
        while j < s.length
            temp = Hash.new(0)
            s[i..j].chars.each do |x|
                temp[x] += 1
            end
            counter[temp] += 1
            j+=1
            x.puts("#{temp} || #{counter}\n")
        end
        i+=1
    end
    x.puts("------------------")
    x.puts(counter)
    ans = counter.values.map {|x| x*(x-1)/2}
    x.puts("#{ans}\n")
    x.puts("------------------")
    z = ans.reduce(:+)
    x.print(z)
    x.close
end

sherlockAndAnagrams "aaa"