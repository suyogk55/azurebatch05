"""
- Dictionary is a collection of Key: Value Pairs
- Dictionaries are ordered , Mutable i.e.changeable collection of Objects
- Duplicates are not allowed 
"""#
#             "Key" : "Value"
ipl_teams  = {"team":"Mumbai Indians","captain":"Rohit","Owner":"RIL","Owner":"RIL"}

print(ipl_teams)
print(type(ipl_teams))

#accessing dictionary objects
print(ipl_teams["team"])
print(ipl_teams["captain"])
print(ipl_teams.get("captain"))

#updating dictionary
ipl_teams["captain"] = "Hardik"

#Add new Value
ipl_teams["Vice Captain"] = "Shubhaman"
print(ipl_teams)

#Remove value
ipl_teams.pop("Owner")
print(ipl_teams)

ipl_teams.clear()

print(ipl_teams)



