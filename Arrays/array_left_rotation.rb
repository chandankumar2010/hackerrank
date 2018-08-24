#using ruby core library
arr_lines = File.readlines("./IO/input.txt")
arr_num = arr_lines[1].split(' ')

#print arr_num.rotate(arr_lines[0][2].to_i)

=begin
#using array functions
def roatateLeft(a, d)
    begin
        a.push(a.shift)
        d -= 1
    end while d>0
    
    print a
end
roatateLeft arr_num, arr_lines[0][2].to_i
=end

#without any built-in functions
def bare_rotate(a, d)
    arr = Array.new
    begin
        arr = rotateOnce(a)    
        d -= 1
    end while d>0
    print arr
end

def rotateOnce(a)
    temp = a[0]
    i=0
    begin 
        a[i] = a[i+1]
        i+=1
    end while  i < a.length-1
    a[i]=temp
    return a
end

bare_rotate arr_num,arr_lines[0][2].to_i
