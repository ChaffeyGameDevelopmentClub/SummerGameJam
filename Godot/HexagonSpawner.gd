extends Node
var theta = 120.0
var current_row = 1.0
var radius = 1
@export var hexagon: PackedScene 
var array: Array
var row = 10

func _ready(): 
	build_map()
	find_num (row)
	print(find_num(row))
func build_map (): 
	#var new_hexagon = hexagon.instantiate()
	#new_hexagon.initialize(Vector3(-5, 0, 5))
	#add_child(new_hexagon)

	var num = 0.0
	for i  in range (find_num(row) - 1):
		#print(num)
		num += 1.0
		if i == array [current_row] - 1:
			print(i)
			theta = 360.0 / (6.0 * (current_row))
			current_row += 1
			radius += 2
			num = 0.0
			print()
			print()
			print()
			print()

		print(radius*cos(num*deg_to_rad(theta)), radius*sin(num*deg_to_rad(theta)))
		var x = radius*cos(num*deg_to_rad(theta))
		var z = radius*sin(num*deg_to_rad(theta))
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3(x, 0, z))
		add_child(new_hexagon)
		
		#print (str(theta)+" " +str(current_row)+" " +str(radius)+" " +str(num))
		
		
func find_num (row) -> float: 
	if row == 0:
		array.append(1) 
		return 1
	else: 
		var x = (row*6) + find_num (row-1)
		array.append(x)
		return x

#for i in range (12):
#
		#var x = 4*cos(i * deg_to_rad(30))
		#var z = 4*sin(i * deg_to_rad(30))
		#var new_hexagon = hexagon.instantiate()
		#new_hexagon.initialize(Vector3(x, 0, z))
		#add_child(new_hexagon)
