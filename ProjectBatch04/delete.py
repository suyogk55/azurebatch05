original_ls = [1,2,3]

# 1.copy approach using assignment operator
# new_copy = original


#2. shallow copy for simple list
import copy

# new_ls = copy.copy(original_ls)

#  0  1  2
# [1, 2, 3]
# new_ls[2]=6
# print('original list:',original_ls)
# print('new list:',new_ls)
# print(id(original_ls))
# print(id(new_ls))

#            0        1       2    3     4
ipl_old = ['CSK',[2,[5,6]],'MI','RCB','LSG']

# 0   1
#[2,[5,6]]
# 0 1
#[5,6]
ipl_new = copy.copy(ipl_old)   # Shallow Copy
ipl_new[0] = 'PCB'
ipl_new[1][0] = 4
ipl_new[1][1][1] = 15
print('ipl_old :',ipl_old)
print('ipl_new :',ipl_new)
#
print(id(ipl_old[1]))
print(id(ipl_new[1]))
# print(id(ipl_old))
# print(id(ipl_new))

""""
In case of shallow copy for the nested objects within the list
they still refer to the same memory location.
with deep copy nested objects within the list
will also have different memory location.
"""
# ipl_new_deep = copy.deepcopy(ipl_old) #deepcopy
# ipl_new_deep[0] = 'PCB'
# ipl_new_deep[1][0] = 3
# ipl_new_deep[1][1][1] = 15
# print('ipl_old_deep :',ipl_old)
# print('ipl_new_deep :',ipl_new_deep)
# print(id(ipl_new_deep[1][0]))
# print(id(ipl_old[1][0]))