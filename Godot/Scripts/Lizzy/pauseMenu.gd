extends Control
@onready var pause_Menu = $"."

var paused = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pause_Menu.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func pauseMenu(): 
	if paused:
		pause_Menu.hide()
		paused = false
		Engine.time_scale = 1
	else:
		pause_Menu.show()
		paused = true
		Engine.time_scale = 0

func _on_button_pressed():
	get_tree().quit()
	
func _on_mm_button_pressed():
	Engine.time_scale=1
	get_tree().change_scene_to_file("res://start_menu.tscn")
	
func _on_r_button_pressed():
	pauseMenu()
