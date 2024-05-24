extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sg_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/GameSettings/game_settings.tscn")


func _on_e_button_pressed():
	get_tree().quit()
