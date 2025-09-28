#Slicing lets you get a specific part or a slice of a list or a string
#           0   1   2   3   4
my_list = ['a','b','c','d','e']
#          -5   -4 -3  -2  -1
print(my_list[2])
print(my_list[-3])

#[Start of the index : End of the Index]
#[starting index included : ending index excluded]
print(my_list[2:4])
print(my_list[0:3])
#[Start from the beginning upto index --]
print(my_list[:4])
print(my_list[2:])
print(my_list[-4:-2]) # starting index should be lower than ending index
# 4 3 2 1 0 -1 -2 -3 -4
print(my_list[::3]) # get every other item (except step 2)
print(my_list[::-1]) # Reverse the sequence

#insert an item
my_list.insert(2,'z')
#remove an item
my_list.remove('b')
"""
Lists - Mutable (can change) - collection of items
Strings - Immutable (can't change) - collection of text
"""
#           012345678910
test_str = "Hello world"
print(test_str[2:4])
print(test_str[:4])
print(test_str[2:])
print(test_str[::-1])
print(type(test_str))
#        012345678
city = 'Bangalore'
#          -4-3-2-1
print(type(city))
print(city[-4:-2])
print(city[5])
print(len(city))
print(city.upper())
print(city.lower())
print(city.startswith("Ba"))
print(city.endswith("ore"))
print(f"{city} is a part of India")
print(city + " is a part of India")

test_data = '  Hello India  '
print(test_data)
print(test_data.strip())
"Replacing part of the string"
new_data=test_data.replace('India','world')
print(new_data)
"Split into the list based on separator"
sample_data = 'a-b-c-d'
alphabets = sample_data.split('-')
print(alphabets)
