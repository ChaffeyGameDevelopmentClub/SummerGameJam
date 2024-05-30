extends Node

@export var bomb: PackedScene

func _ready():
	AdrianGlobal.connect("bomb_press",spawn_bomb)



func spawn_bomb(locationx, locationy, locationz):
	var new_bomb = bomb.instantiate()
	new_bomb.global_position = Vector3(locationx, locationy + 20, locationz)
	add_child(new_bomb)
