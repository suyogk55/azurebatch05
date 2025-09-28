class Car:
    #class attribute shared by all instance
    wheels = 4

    #constructor method called when object gets created
    def __init__(self,model,price,colour,build_year):
        #instance attributes/properties(unique to each object)
        self.model = model
        self.price = price
        self.colour = colour
        self.year = build_year
        self.speed = 0

    def start(self):
        print(f"{self.model}'s engine is now running!")

    def accelerate(self,increment):
        self.speed=self.speed + increment
        print(f"{self.model}'s speed {self.speed}")

    def stop(self):
        self.speed = 0
        print(f"car {self.model} is stopped")

Car1 = Car("XLS CD","1 CR","white","2023")
Car2 = Car("XUV 700","30 lac","navy blue","2025")
Car3 = Car("range rover","2 cr","black","2024")
# print(Car1.wheels)
# print(Car1.model)
# print(Car2.wheels)
# print(Car2.model)
# print(Car3.wheels)
# print(Car3.model)
#print(type(Car1))
Car1.start()
Car1.accelerate(70)
Car1.stop()


