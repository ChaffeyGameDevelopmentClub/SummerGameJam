extends Node
var theta = 90.0
var current_row = 0
var radius = 1
@export var hexagon: PackedScene 
var array: Array

func _ready(): 
	build_map()
	find_num (7)
	for i in array.size(): 
		print (array [i])

func build_map (): 
	var num = 0
	for i  in range (1,find_num(7)):
		if i == array [current_row]:
			theta /= 2 
			current_row += 1
			radius += 2
			num = 0
			
		var x = radius*cos(num*theta)
		var z = radius*sin(num*theta)
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3(x, 0, z))
		add_child(new_hexagon)
		num += 1
		print (str(theta)+" " +str(current_row)+" " +str(radius)+" " +str(num))
		
func find_num (row): 
	if row == 0:
		print ("1")
		array.append(1) 
		return 1
	else: 
		var x = (row*6) + find_num (row-1)
		array.append(x)
		return x

