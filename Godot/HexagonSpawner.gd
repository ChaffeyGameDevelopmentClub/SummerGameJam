extends Node

@export var hexagon: PackedScene 
@export var crumble_timer: Timer

var theta = 120.0
var current_row = 1.0
var radius = 0
var num_of_hexagons: Array
var hexagon_array: Array
var hex_row: int = 0
var hex_id: int = 0 # rand later
var row = 15
var rng 

func _ready(): 
	rng = RandomNumberGenerator.new()
	build_map()
	crumble_timer.start()

func build_map (): 
	var num = 0.0
	var y = 0
	hexagon_array.append([])
	for i  in range (find_num(row)):
		#breaks crumble function ?
		#await get_tree().create_timer(.01).timeout
		if i == num_of_hexagons [current_row - 1]:
			theta = 360.0 / (6.0 * (current_row))
			current_row += 1
			radius += 2
			num = 0.0
			hex_row += 1
			y = rng.randf_range(0,3)
			hexagon_array.append([])
		var x = radius*cos(num*deg_to_rad(theta))
		var z = radius*sin(num*deg_to_rad(theta))
		var new_hexagon = hexagon.instantiate()
		add_child(new_hexagon)
		
		hexagon_array[hex_row].append(new_hexagon)
		new_hexagon.initialize(Vector3(x, y, z))
		num += 1


func find_num (row) -> float: 
	if row == 0:
		num_of_hexagons.append(1) 
		return 1
	else: 
		var x = (row*6) + find_num (row-1)
		num_of_hexagons.append(x)
		return x




func _on_crumble_timer_timeout():
	if hexagon_array[hex_row].size() <= 0:
		hex_row -= 1
		hex_id = rng.randi_range(0, hexagon_array[hex_row].size() - 1)
	else:
		hex_id = rng.randi_range(0, hexagon_array[hex_row].size() - 1)
	if hexagon_array[hex_row].is_empty():
		crumble_timer.stop()
		await get_tree().create_timer(2).timeout
		$"../_)".visible = true
		return
	#print(hexagon_array[hex_row].size())
	print(str(hex_row) + " " + str(hex_id))
	hexagon_array[hex_row][hex_id].crumble()
	hexagon_array[hex_row].remove_at(hex_id)
