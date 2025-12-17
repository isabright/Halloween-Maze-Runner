extends Node3D

@onready var skeleton = load("res://models/skeleton.tscn")
@onready var candy = load("res://candycord.tscn")
@onready var key = load("res://materials/key.tscn")


var time_accum = 0.0
var next_time = randf_range(0.5, 2.0)
var x_rand
var y_rand
var instance
var candy_created = 0
var skeletons_created = 0


func _process(delta):
	time_accum += delta
	if time_accum >= next_time and skeletons_created <= 10:
		time_accum = 0.0
		next_time = randf_range(1.0, 5.0)
		instance = skeleton.instantiate()
		x_rand = randf_range(-0.5, 0.5)
		var change = Vector3(x_rand, 0.75, 0)
		instance.global_position += change
		var pos = instance.global_position
		add_child(instance)
		skeletons_created += 1
		
		instance.tree_exited.connect(func():
			spawn_candy(instance.global_position))
			
func spawn_candy(pos: Vector3):
	if candy_created == 5:
		var key_inst = key.instantiate()
		var change = Vector3(0, .4, .3)
		key_inst.global_position += change
		add_child(key_inst)
	else:
		var candy_inst = candy.instantiate()
		x_rand = randf_range(-0.5, 0.5)
		var change = Vector3(x_rand, 0.1, 0)
		candy_inst.global_position += change
		add_child(candy_inst)
		candy_created += 1
