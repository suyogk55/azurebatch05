# Cube of the number
# 2 = 2 * 2 * 2 =8
# 3 = 3 * 3 * 3 =27


#square of the number
#      0 1 2 3
num = [1,2,3,4]

# print(3**2)

# print(num[0]**2)
# print(num[1]**2)
# print(num[2]**2)
# print(num[3]**2)

# num_square = []
#
# num_square.append(num[0]**2)
# num_square.append(num[1]**2)
# num_square.append(num[2]**2)
# num_square.append(num[3]**2)

# print(num_square)


# xyz = []
# print(type(xyz))

#loops

# num_ls= [1,2,3,4,5,6,7,8,9,10]
# num_square = []
# print(len(num_ls))

# while loop --- is used when you want to repeat something until a condition is true
# n=0
#       #10 < 10
# while n < len(num_ls):
#     num_square.append(num_ls[n]**2)
#     n=n+1
#
# print(num_square)


# print(range(5))

#For Loops - used when you know how many times you want to repeat something

# for variable in sequence:
#     #code to execute

# states = ['MH','KN','GJ','WB','MP']

#looping through list
# for state in states:
#     print(f"State - {state} in INDIA")

# xyz = range(5)
# print(type(xyz))
#
# for i in range(10):
#     print(i)

# for i in range(2,9):
#     print(i)


#Loop Control Statements
# Break - exit loop immediately as the condition becomes true
# for state in states:
#     if state == 'WB':
#         break
#     print(f"State - {state} in INDIA")

# for i in range(2,9):
#     if i==5:
#         break
#     print(i)


# print(5%2)
# continue - Skip the control to next iteration
# want to print odd numbers only
# for i in range(11):
#     if i % 2 == 0: # skip the even numbers
#         continue
#     print(i)


for i in range(2,9):
    if i == 5:
        continue
    print(i)
else:
    print("loop completed successfully!")

# print('Enter some input')
# a = input('Enter some input')
# print(f'your input was {a}')