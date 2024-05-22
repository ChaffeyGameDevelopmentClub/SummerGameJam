extends Node

@export var bomb: PackedScene

func _ready():
	AdrianGlobal.connect("bomb_press",spawn_bomb)

 # 

func spawn_bomb():
	var new_bomb = bomb.instantiate()
	new_bomb.global_position = Vector3.ZERO
	add_child(new_bomb)
