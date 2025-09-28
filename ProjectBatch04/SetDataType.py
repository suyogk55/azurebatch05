#Set Data Type
"""
- unordered collection of elements
- immutable
- No Duplicates
"""
stud_data = {100,"Virat",1.5,"Rohit",100,"100","Sachin","Virendra"}
#doesnt allow duplicates
# order is not maintained
# Unindexed
print(stud_data)

"""
though they are immutable : we can add or remove/pop() values
"""
stud_data.add("Shreyas")
print(stud_data)
stud_data.remove("Virendra")
print(stud_data)
stud_data.pop()
print(stud_data)
