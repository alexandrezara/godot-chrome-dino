extends Node2D
class_name EnemyCactus

@export var speed: float

const enemy_scenes = [
	preload("res://scenes/enemy/enemy_cactus_large_0.tscn"),
	preload("res://scenes/enemy/enemy_cactus_large_1.tscn"),
	preload("res://scenes/enemy/enemy_cactus_large_2.tscn"),
]

func _ready():
	var scene = enemy_scenes.pick_random()
	var instance = scene.instantiate()
	add_child(instance)

func _process(delta):
	position.x += -speed * delta;

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
