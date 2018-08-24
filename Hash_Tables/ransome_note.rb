def checkMagazine(magazine, note)
    mag = Hash.new(0)
    magazine.each do |x|
        mag[x]+=1
    end
    note.each do |x|
        if mag.has_key?(x) && mag[x]>0
            mag[x] -= 1
        else
            puts "No"
            return
        end
    end
    puts "Yes"
end
q1 = ("two times three is not four").split(' ')

q2 = ("two times two is four").split(' ')

checkMagazine q1,q2