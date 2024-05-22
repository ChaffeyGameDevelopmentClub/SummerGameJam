extends StaticBody3D
var num = 0.01
func initialize (pos:Vector3):
	global_position = pos
func crumble():
	$FallTimer.start()

func _on_fall_timer_timeout():
	position.y -= num
	num += num/10
	if position.y <= -5:
		queue_free()
