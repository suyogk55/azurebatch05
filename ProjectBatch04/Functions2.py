#Variable Scope

x=10 #Global Variable -- accessible throughout the program
print("First outside function , global x:", x)
def test_scope():
    y = 5 # local variable
    print("inside function:",y)
    print("inside function , global x:",x)

# test_scope()
print("Second outside function , global x:", x)
#print("outside function , local y:", y)

"""
In case you want to update value of global variable inside function
using the global keyword
"""

def modify_value():
    global x # declare we want to access global variable
    x=20 #Modify the global variable

print("value of x before calling function",x)
modify_value()
print("value of x after calling function",x)
