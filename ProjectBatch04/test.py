
ipl_old = ['CSK',[1,2,3],'MI','RCB','LSG']

#assignment approach
ipl_new = ipl_old

#shallow copy
import copy
ipl_new = copy.copy(ipl_old)

#deep copy
ipl_new = copy.deepcopy(ipl_old)

ipl_new[1][1] = 10

