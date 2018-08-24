def minimumSwaps(arr)
    i=0
    counter = 0
    while i<arr.length do 
        if arr[i] == i+1
            i += 1
            next
        end

        temp = arr[arr[i] - 1];
        arr[arr[i] - 1] = arr[i];
        arr[i] = temp; 
        counter += 1
    end
    

    puts counter
end

input_file = File.readlines("./IO/input.txt")

i_file = 3
while i_file < input_file.length do
    arr = input_file[i_file].split(' ').map(&:to_i)
    print arr
    minimumSwaps arr
    i_file += 2
end
q = [2,3,4,1,5]