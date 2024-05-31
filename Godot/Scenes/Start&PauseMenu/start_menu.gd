extends Control


func _on_sg_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/GameSettings/game_settings.tscn")


func _on_e_button_pressed():
	get_tree().quit()
