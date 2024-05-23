extends RigidBody3D

var targets = []

@export var knockback_force: float


func _on_area_3d_body_entered(body):
	targets.append(body)
	print(body)


func _on_area_3d_body_exited(body):
	targets.erase(body)
	pass



	


func _on_timer_timeout():
	var k = Knockback.new()
	k.knockback_force = knockback_force
	k.knockback_origin = global_transform.origin
	knockback_bodies(k)
	print("please")

func knockback_bodies(k: Knockback):
	for target in targets:
		if target.is_in_group("player"):
			target.knockback(k)
