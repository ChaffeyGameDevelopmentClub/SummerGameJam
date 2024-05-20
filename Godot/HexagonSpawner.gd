extends Node

@export var hexagon: PackedScene 

func _ready(): 
	build_map()

func build_map (): 
	var radius = 9
	for i  in range (6):
		print("o")
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3.ZERO)
		add_child(new_hexagon)
		
