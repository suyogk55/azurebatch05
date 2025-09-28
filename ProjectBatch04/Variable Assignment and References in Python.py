#Core Concept : Variable as a reference

#Variable is container - storing values
#Variable is name given to the memory location
#Memory address will be the same for all the same values
#simple assignment
a = 5

b = a

b = 5
c = 10
# a = 5
# b = 10
# print(a)
# print(b)
# b = 4
# a = 5
# a = 5
# x = 5
# print(a)
# print(b)

print(id(a))
print(id(b))
print(id(c))
# print(id(x))


