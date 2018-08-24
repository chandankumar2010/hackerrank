def arrayManipulation(n,qry)
    arr = Array.new(n,0)
    i=0
    while i<qry.length do
        j=qry[i][0]

        while j<=qry[i][1] do
            arr[j-1] += qry[i][2]
            j+=1
        end
        i+=1
        
    end
    print arr.max
    


end

queries = [[1,2,100],[2,5,100],[3,4,100]]
arrayManipulation 5,queries