extends Node

@export var hexagon: PackedScene 

var theta = 120.0
var current_row = 1.0
var radius = 0
var array: Array
var row = 20


func _ready(): 
	build_map()
	find_num (row)


func build_map (): 
	var num = 0.0
	var y = 0
	for i  in range (find_num(row)):
		await get_tree().create_timer(.01).timeout
		if i == array [current_row - 1]:
			theta = 360.0 / (6.0 * (current_row))
			current_row += 1
			radius += 2
			num = 0.0
			y += .25
		var x = radius*cos(num*deg_to_rad(theta))
		var z = radius*sin(num*deg_to_rad(theta))
		var new_hexagon = hexagon.instantiate()
		add_child(new_hexagon)
		new_hexagon.initialize(Vector3(x, y, z))
		num += 1


func find_num (row) -> float: 
	if row == 0:
		array.append(1) 
		return 1
	else: 
		var x = (row*6) + find_num (row-1)
		array.append(x)
		return x


