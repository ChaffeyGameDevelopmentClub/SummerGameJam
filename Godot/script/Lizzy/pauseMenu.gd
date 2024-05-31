extends Control
@onready var pause_Menu = $"."
var paused = false
# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		print('pause')
		pauseMenu()

# Called when the node enters the scene tree for the first time.
func _ready():
	pause_Menu.hide()


func pauseMenu(): 
	if paused:
		pause_Menu.show()
		Engine.time_scale = 1
		paused = false
	else:
		pause_Menu.hide()
		Engine.time_scale = 0
		paused = true
	

func _on_button_pressed():
	get_tree().quit()

func _on_mm_button_pressed():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://Scenes/Start&PauseMenu/start_menu.tscn")
	
func _on_resume_button_pressed():
	pauseMenu()
