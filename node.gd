extends Node3D

var result

#func _physics_process(delta):
	#var space_state = get_world_3d().direct_space_state
	#var right_controller = $"XROrigin3D/Right"
	#var dir = right_controller.global_basis.z * -1
	#var origin = right_controller.global_position
	#var end = origin + dir * 1.5
	#var lineRend = $"XROrigin3D/Right/LineRenderer"
	
	#var query = PhysicsRayQueryParameters3D.create(origin, end)
	#query.collide_with_areas = true
	
	#result = space_state.intersect_ray(query)
	#var controller = $XROrigin3D/Right
	#var new_end
#	if result:
		#lineRend.points[1] = result.position
	
