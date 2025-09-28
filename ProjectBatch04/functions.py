"""
Function - is block / section of the code which is used to avoid repeating same
lines of code or avoid repeating same logic.
#1.system defined functions
print()
type()
#2. user defined functions
xyz()

with the function we have
less code
less duplication
more descriptive
"""

def function_name(parameters):
    #lines of code
    #function body
    return value # optional

calculation_to_seconds = 24 * 60 * 60

five_days_to_seconds = 5 * calculation_to_seconds

name_of_unit = 'seconds'
# print(f"5 days into seconds are {5 * calculation_to_seconds}")
# print(f"7 days into seconds are {7 * calculation_to_seconds}")
# print(f"10 days into seconds are {10 * calculation_to_seconds}")
# print(f"20 days into seconds are {20 * calculation_to_seconds}")
# print(type(five_days_to_seconds))

"""
Parameters are the variables in the function definition
vs
Arguments are actual values passed to the function
"""

# function just printing not returning anything
def days_to_units(num_of_days):
    print(f"{num_of_days} days into seconds are {num_of_days * calculation_to_seconds} {name_of_unit}")
# days_to_units(5)

# Function returning single value

def days_to_units_v1(num_of_days):
    return num_of_days * calculation_to_seconds
    #print(f"{num_of_days} days into seconds are {num_of_days * calculation_to_seconds} {name_of_unit}")

# def days_to_units_v1(num_of_days):
#     output= num_of_days * calculation_to_seconds
#     return output

test = days_to_units_v1(10)




# print(type(test))

#Indentation - means having lines of code with same spacing in the beginning within function
def greetings1():
 print('Good Morning!')
print('INdia')

greetings1()
# def greetings(Time,Greetings):
#     print(f'Good {Greetings}! Time is {Time}')
#
# greetings('10.00 AM', "Morning")


#Default Parameters/Optional Arguments
# def kgs_to_gram(kg,unit="grams"):
#     print(f"{kg} Kgs to Grams:{kg*1000} {unit}")
#
# kgs_to_gram(5)

# Arbitary Arguments : When we are a not sure about the number of arguments or we want to pass any number of arguments,
# we can use *args
def greetings_arbt(fixed_args,*wishes):
    print(wishes)
    # i = 0
    # for wish in wishes:
    #     print(f"arg{i} : {wish}")
    #     i=i+1


greetings_arbt(1)

#Keyworded Arguments **kwargs

def emp_info(*args,**details):
    print(args)
    print(details)

emp_info("Hello",name="suyog" , age=31, city = "Pune")

"""
Please note both *args and **kwargs can be used together
only thing is *args must come before **kwargs in the functions parameter list
"""


# greetings1()
# Multiple return values

def calculate(a,b):
    sum = a + b
    difference = a - b
    product = a * b
    return sum,difference,product

# results = calculate(10,5)
# print(results)
#
# #unpacking the tuple
# x,y,z = calculate(10,5)
# print(x)
# print(y)
# print(z)
# print(type(results))
