extends Control

@onready var radiusBar = $RadiusBar
@onready var radiusBarVal = $BarValRadius
var value : int
var text : String
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = radiusBar.value
	text = String.num(value)
	radiusBarVal.set_text(text)
