#Tuple Data Type
"""
Tuple is same as list - ordered collection of elements
only difference between tuple and list is that tuple are immutable
i.e. tuples can not be modified after its creation
"""
#            0     1      2      3    4   5      6        7
stud_data = (100,"Virat",1.5,"Rohit",100,"100","Sachin","Virendra")
#             -8    -7     -6    -5    -4  -3     -2      -1
print(stud_data)
print(type(stud_data))

print(stud_data[1])
print(stud_data[3])
print(stud_data[-2])
# stud_data[1] = "Shreyas"

"""
In case of tuples we can not use functions like insert/remove/pop
but there are some exceptions - concatenation
"""
stud_data = stud_data + (11,)
print(stud_data)
