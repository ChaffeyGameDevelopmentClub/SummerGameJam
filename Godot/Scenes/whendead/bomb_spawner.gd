extends Node

@export var bomb: PackedScene

func _ready():
	Global.connect("Punch_1",spawn_bomb)



func spawn_bomb():
	var new_bomb = bomb.instantiate()
	new_bomb.global_position = Vector3.ZERO
	add_child(new_bomb)
