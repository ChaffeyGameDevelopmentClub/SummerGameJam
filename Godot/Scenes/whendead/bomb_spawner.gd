extends Node
var rng = RandomNumberGenerator.new()

@export var bomb: PackedScene

func _ready():
	AdrianGlobal.connect("bomb_press",spawn_bomb)



func spawn_bomb():
	var new_bomb = bomb.instantiate()
	new_bomb.global_position = Vector3(rng.randf_range(-10.0, 10.0), 3.0, rng.randf_range(-10.0, 10.0))
	print("Test")
	add_child(new_bomb)
