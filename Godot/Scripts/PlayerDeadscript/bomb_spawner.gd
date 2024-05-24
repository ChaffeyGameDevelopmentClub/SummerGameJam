extends Node

@export var bomb: PackedScene

func _ready():
	AdrianGlobal.connect("bomb_press",spawn_bomb)

 # 

func spawn_bomb(location):
	var new_bomb = bomb.instantiate()
	new_bomb.global_position = location
	add_child(new_bomb)
