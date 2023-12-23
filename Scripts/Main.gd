extends Node2D

@export var spawn_count = 200
var star_scene = preload("res://Scenes/Star.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
	
		star.position.x = randi_range(-180, 180)
		star.position.y = randi_range(-100, 100)
		var star_size = randf_range(0.5, 1.0)
		star.scale.x = star_size
		star.scale.y = star_size
