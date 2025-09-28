#Nested loops - loop within loop

#multiplication table

#range(1,4) = 1,2,3

# for i in range(1,4):   #3rd iteration value of i=3
#     for j in range(1,4): #1st iteration of the loop j=1
#         print(f"{i}*{j} = {i*j}")
#         print("part of inner loop")
#     print("part of outer loop")
# print("outside for loop")


# while True:
#     print("hello")

# while False:
#     print("world")

#sum in list of numbers
numbers = [1,2,3,4,5]
total = 0
for num in numbers:
    #total = total + num  # this can be rewritten as below in short
    total += num
# print(total)

# finding maximum value from the list without using inbuilt functions
numbers_ls = [11,22,83,94,15]
max_num = numbers_ls[0] #94 #initialize with first element 11
for num in numbers_ls: #iterate through each number in the list
    print(num)
    if num > max_num: #check if current number is larger
        max_num = num #update max_num if true
        print(max_num)
print(f"maximum number {max_num}")
