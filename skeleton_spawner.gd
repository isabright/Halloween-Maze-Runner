extends Node3D

@onready var skeleton = load("res://models/skeleton.tscn")
@onready var candy = load("res://candycord.tscn")


var time_accum = 0.0
var next_time = randf_range(0.5, 2.0)
var x_rand
var y_rand

func _process(delta):
	time_accum += delta
	if time_accum >= next_time:
		time_accum = 0.0
		next_time = randf_range(1.0, 5.0)
		var instance = skeleton.instantiate()
		x_rand = randf_range(-0.5, 0.5)
		var change = Vector3(x_rand, 1, 0)
		instance.global_position += change
		var pos = instance.global_position
		add_child(instance)
		
		if instance.hit_count == 2:
			var candy_instance = candy.instantiate()
			candy_instance.global_position = pos
			add_child(candy_instance)
		
