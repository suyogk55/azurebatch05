"""
Conditions allow our program to make decisions based on 
 whether certain comparisons are true or false
"""""
# Basic if Statement

# age = 17
#
# if age >= 18:
#     print("Congratulations, you are eligible for the exam!")



#if-else statement
# age = 17
#
# if age >= 18:
#     print("Congratulations, you are eligible for the exam!")
# else:
#     print("Sorry you are not eligible for the exam, requires at least 18 years of age!")

"""
marks>=90 =>  A
marks>=80 =>  B
marks>=70 =>  C
otherwise Grade D
"""
# in case we want to have multiple conditions, we can use elif
# marks = 75
#
# if marks>=90:
#     print("Grade A")
# elif marks>=80:
#     print("Grade B")
# elif marks>=70:
#     print("Grade C")
# else:
#     print("Grade D")

#nested if: if condition inside if block
marks=96
# if marks>=90:
#     if marks >= 95:
#         print("Grade A+")
#     else:
#         print("Grade A")
# elif marks>=80:
#     print("Grade B")
# elif marks>=70:
#     print("Grade C")
# else:
#     print("Grade D")

# Comparison Operators
x=10
y=5
#print(x==y) # Equal to -->False
#print(x!=y) # not Equal to -->True
#print(x>y)   # Greater than -->True
#print(x<y)   # lesser than -->False
# print(x>=y)   # Greater than or equal to -->True
# print(x<=y)   # lesser than or equal to -->False

#logical Operators AND OR
#in case of and operator (both the conditions must be true)
marks =92
# if marks>=90 and marks >= 95:
#     print("Grade A+")
#in case of or operator (at least one of the conditions must be true)
# if marks>=90 or marks >= 95:
#     print("Grade A+")


# ipl_teams = ["MI","CSK","DDL","PCN","GJL"]
#
# team ="MI"
# #in operator with conditions
# if team in ipl_teams:
#     print("team is present")

# whether number is positive or not

# accepting input from screen or console
# input from the console will always be in string format
number = int(input("Enter a Number:"))
# print(type(number))
if number > 0:
    print("positive number")
elif number < 0:
    print("negative number")
else:
    print("Zero")


