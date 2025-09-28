"""
A module in python is a single python file (.py) containing python code

It can contain functions, classes , variables etc.

A Package is a collection of modules organized in directories.
"""
#from calculator import math_operations

"""example of system defined functions"""
# import os
# # print(os.listdir())

import os
print(os.listdir())

import datetime as dt

# print(dt.datetime.today())

"""example of user defined functions"""
"""import entire module"""
# import calculator.math_operations
# from calculator import math_operations
# result = math_operations.multiply(10,10)
# print(result)

# import sys
# import os
# sys.path.append(os.path.join(os.path.dirname(__file__),'/calculator/math_operations'))
# """import specific functions"""
# #from calculator.math_operations import multiply
# result = math_operations.multiply(1,2)
# print(result)

from test_package import arithmetic
result = arithmetic.do_multiplication(4,5)
add = arithmetic.do_addition(1000,10)
print(add)



