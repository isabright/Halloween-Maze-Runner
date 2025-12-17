extends Node3D
@onready var candy = load("res://candycord.tscn")

func _on_area_3d_area_entered(area: Area3D) -> void:
	visible = false
	var candy_instance = candy.instantiate()
	add_child(candy_instance)
	
