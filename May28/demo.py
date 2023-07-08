car={}

car={ "brand" : "Maruti", "model" : "celerio", "colour" : "Red"   }


car["year"] = 2020

for key in car.keys():
	print(f"Key found: {key}")
	print(f"Value associated with this key {car[key]}")


for value in car.values():
	print(f"Value found: {value}" )
