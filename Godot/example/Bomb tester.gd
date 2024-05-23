extends Node3D
var rng = RandomNumberGenerator.new()
var bomb_preload = preload("res://Items/Item scenes/bomb.tscn")


func _on_bomb_spawner_tiem_timeout():
	var BombBaby = bomb_preload.instantiate()
	add_child(BombBaby)
	BombBaby.global_position = Vector3(rng.randf_range(-10.0, 10.0), 3.0, rng.randf_range(-10.0, 10.0))
	
