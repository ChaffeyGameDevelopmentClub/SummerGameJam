extends Node3D
var rng = RandomNumberGenerator.new()
var bomb_preload = preload("res://Items/Item scenes/bomb.tscn")
var item2_preload = preload("res://Items/Item scenes/bomb.tscn")
var item3_preload = preload("res://Items/Item scenes/bomb.tscn")
var item4_preload = preload("res://Items/Item scenes/bomb.tscn")
func _on_bomb_spawner_tiem_timeout():
	var BombBaby
	if(rng.randf_range(1,5) < 2):
		print("1")
		BombBaby = bomb_preload.instantiate()
	elif(rng.randf_range(1,4)<2):
		print("2")
		BombBaby = item2_preload.instantiate()
	elif(rng.randf_range(1,2)<2):
		print("3")
		BombBaby = item3_preload.instantiate()
	else:
		print("4")
		BombBaby = item4_preload.instantiate()
	add_child(BombBaby)
	BombBaby.global_position = Vector3(rng.randf_range(-10.0, 10.0), 3.0, rng.randf_range(-10.0, 10.0))
	
