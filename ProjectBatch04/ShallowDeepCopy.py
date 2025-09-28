#copy using assignment operator
#            0        1       2    3     4
ipl_old = ['CSK',[2,[5,6]],'MI','RCB','LSG']

# 0   1
#[2,[5,6]]
# 0 1
#[5,6]
# print(ipl_old[1][1][1])

ipl_new = ipl_old
#
# print(ipl_old)
# print(ipl_new)
ipl_new[0] = 'RLY'
ipl_new[1][1][0] = 15
print('ipl_old :',ipl_old)
print('ipl_new :',ipl_new)
#
print(id(ipl_old))
print(id(ipl_new))

