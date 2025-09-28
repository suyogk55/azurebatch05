class User:

    #Attributes
    username = ''
    email = ''
    followers = 0
    is_logged_in = False
    dob= '1900-01-01'

    def login(self):
        self.is_logged_in = True
        print(f"{self.username} logged in successfully")

    def logout(self):
        self.is_logged_in = False
        print(f"{self.username} logged out successfully")

    def follow(self,other_user):
        other_user.followers += 1
        print(f"you are now following {other_user.username}")


class User_new:

    #Attributes
    username = ''
    email = ''
    phone = 0
    followers = 0
    is_logged_in = False

    def login(self):
        self.is_logged_in = True
        print(f"{self.username} logged in successfully")

    def logout(self):
        self.is_logged_in = False
        print(f"{self.username} logged out successfully")

    def follow(self,other_user):
        #other_user.followers = other_user.followers + 1
        other_user.followers += 1
        print(f"you are now following {other_user.username}")

#Actual Users(Objects)

user_virat = User()
user_sachin = User_new()

user_virat.username = "virat_engineers"
user_virat.email = "virat_engineers@gmail.com"
user_sachin.username = "sachin_engineers"
user_sachin.phone = 98545454656

user_virat.login()
user_sachin.login()

#passing object as a parameter
print(f"Sachin Followers : {user_sachin.followers}")
user_virat.follow(user_sachin)
print(f"Sachin Followers : {user_sachin.followers}")


"""
Classes and Objects : usage
1.keeps code organized
2.code reusability - avoiding repetition
3.modelling real world scenarios

"""






