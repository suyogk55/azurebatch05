#1.importing entire module
# import test_package.arithmetic as a
# result = a.do_multiplication(10,20)
# print(result)
from importlib.metadata import packages_distributions

#2.importing specific functions from the module
from test_package.arithmetic import do_multiplication
result = do_multiplication(10,20)
print(result)

#3. package inside package
# import test_package.in_calculate.division as d
# result = d.do_division(10,5)
# print(result)






