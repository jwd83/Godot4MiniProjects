extends RigidBody3D

@export var move_speed: float = 4.0

func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_LEFT):
		linear_velocity.x = -move_speed
	elif Input.is_key_pressed(KEY_RIGHT):
		linear_velocity.x = move_speed
	else:
		linear_velocity.x = 0

	# get_tree().reload_current_scene()


func _on_body_entered(body):
	if body.is_in_group("Tree"):
		get_tree().reload_current_scene()
