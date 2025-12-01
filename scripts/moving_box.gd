extends CSGBox3D

var rotation_velocity: float = 90

func _process(delta):
	global_rotation_degrees.y += rotation_velocity * delta
