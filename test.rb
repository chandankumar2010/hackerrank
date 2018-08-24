hsh = Hash.new(0)
print hsh[1]
hsh.compare_by_identity
hsh["a"]=1
hsh["a"]=2
hsh["a"]=3
print hsh
