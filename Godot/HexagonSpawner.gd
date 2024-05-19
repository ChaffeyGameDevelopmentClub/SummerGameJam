extends Node

@export var hexagon: PackedScene 

func _ready(): 
	build_map()

func build_map (): 
	var radius = 9
	for i  in range (1,7):
		var x = 1*cos(i*45)
		var z = 1*sin(i*45)
		print(x,z)
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3(x, 0, z))
		add_child(new_hexagon)
		
	for i in range (1, 13):
		var x = 2*cos(i*22.5)
		var z = 2*sin(i*22.5)
		print(x,z)
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3(x, 0, z))
		add_child(new_hexagon)

	for 
