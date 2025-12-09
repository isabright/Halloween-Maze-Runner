extends Node3D

@export var dir = Vector3(0,0,1)
@export var speed = 2
var new_material
var old_material
@export var hit_count = 0



func _ready():
	old_material = preload("res://materials/clear.tres")
	new_material = preload("res://materials/laser.tres")
	

func _process(delta):
	global_position += dir * (speed * delta)


func _on_area_3d_area_entered(area: Area3D):
	hit_count += 1
	$"Sketchfab_Scene/MeshInstance3D".material_override = new_material
	if hit_count == 2:
		queue_free()



func _on_area_3d_area_exited(area: Area3D) -> void:
	$"Sketchfab_Scene/MeshInstance3D".material_override = old_material
