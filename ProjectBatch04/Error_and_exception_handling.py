"""
Exception : are the events that occur during program execution
that disrupts the normal flow of the execution
"""


"""Try - Except Block"""
# try: # code that might cause an error
#     result = 10 / 0
#
# except ZeroDivisionError:
#     # what to do id the error occurs
#     print("you can't divide by zero!")

try: # code that might cause an error
    num =int(input("Enter a number to divide 100:"))
    result = 100 / num
    print(f"100 / {num} = {result}")

except ZeroDivisionError:
    # what to do id the error occurs
    print("you can't divide by zero!")

except ValueError:
    print("please enter a valid integer")

except Exception as e:
    print(f"An unexpected error has occurred:{e}")

else:
    # else block will be executed only if no exceptions occured
    #runs only if no exceptions occured
    print(f"Success! Result is generated")

finally:
    # This part always runs, even if exceptions are there or not
    print("program run completed successfully!")


