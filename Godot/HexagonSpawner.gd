extends Node
var theta = 120.0
var current_row = 1.0
var radius = 0
@export var hexagon: PackedScene 
var array: Array
var row = 10

func _ready(): 
	build_map()
	find_num (row)
	print(find_num(row))
	for i in range (10):
		print(array[i])
func build_map (): 
	#var new_hexagon = hexagon.instantiate()
	#new_hexagon.initialize(Vector3(-5, 0, 5))
	#add_child(new_hexagon)

	var num = 0.0
	var y = 0
	for i  in range (find_num(row)):
		#print(num)
		
		
		if i == array [current_row - 1]:
			print(i)
			theta = 360.0 / (6.0 * (current_row))
			#print(array[current_row] -1)
			#print(360.0 / (6.0 * (current_row)))
			current_row += 1
			radius += 2
			num = 0.0
			
			print()
			print()
		#y += 1
		#print(str(radius*cos(num*deg_to_rad(theta)))+ " " + str(radius*sin(num*deg_to_rad(theta))))
		#print(num)
		#print(deg_to_rad(theta))
		#print(cos(num*deg_to_rad(theta)))
		var x = radius*cos(num*deg_to_rad(theta))
		var z = radius*sin(num*deg_to_rad(theta))
		
		var new_hexagon = hexagon.instantiate()
		new_hexagon.initialize(Vector3(x, y, z))
		add_child(new_hexagon)
		num += 1
		#print (str(theta)+" " +str(current_row)+" " +str(radius)+" " +str(num))
		
		
func find_num (row) -> float: 
	if row == 0:
		array.append(1) 
		return 1
	else: 
		var x = (row*6) + find_num (row-1)
		array.append(x)
		return x


