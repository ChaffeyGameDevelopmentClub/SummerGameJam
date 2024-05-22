extends Node3D

var bomb_preload = preload("res://Items/Item scenes/bomb.tscn")


func _on_bomb_spawner_tiem_timeout():
	var BombBaby = bomb_preload.instantiate()
	add_child(BombBaby)
	BombBaby.global_position = global_position
	
