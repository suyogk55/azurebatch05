#List Data Type
# 1.Ordered i.e. it will follow sequence
# 2.Changeable - i.e.lists are mutable
# 3.Allows duplicate members
#            0     1      2      3    4   5      6        7
stud_data = [100,"Virat",1.5,"Rohit",100,"100","Sachin","Virendra"]
#             -8    -7     -6    -5    -4  -3     -2      -1
print(stud_data)
print(type(stud_data))
#access elements within list
# print(stud_data[1])
# print(stud_data[3])
"""
 when someone trying to access elements with minus index 
 it indicates that he/she is trying to access element from the last 
 and  when someone trying to access elements with positive index 
 it indicates that he/she is trying to access element from the beginning 
"""

print(stud_data[-5])
print(stud_data[7])
print(stud_data[-1])

#Updating list values
stud_data[1] = 'Shreyas'
stud_data[-1] = 'MS'

print(stud_data)

#remove elements from the list
stud_data.remove('MS')

#delete last element from the list
# stud_data.pop()

#append elements to the list
stud_data.append("Mumbai")
print(stud_data)
print(stud_data.index("Mumbai"))


#Insert the element
stud_data.insert(10,"Delhi")
print(stud_data)
print(stud_data.index("Delhi"))
print(stud_data.index("Mumbai"))

#  0     1          2     3      4    5           6       7          8    9
# [100, 'Shreyas', 1.5, 'Rohit', 100, '100', 'Sachin', 'Virendra', 'MS', 'Mumbai']
#                                                                  -2    -1
#
#  0     1          2     3      4    5           6       7          8    9        10
# [100, 'Shreyas', 1.5, 'Rohit', 100, '100', 'Sachin', 'Virendra', 'MS', 'Delhi','Mumbai']
#                                                                  -3    -2        -1


#
# print(stud_data.count())


print(stud_data.len())

# print(stud_data.reverse())