extends Node2D

@export var speed: float
@export var enemy_scene: PackedScene
@export var min_spaw_time = 1
@export var max_spaw_time = 3

@onready var spawn_timer = $Timer

var count = 0

func start():
	get_tree().call_group("enemy", "queue_free")
	spawn_timer.start(randf_range(min_spaw_time, max_spaw_time))

func stop():
	spawn_timer.stop()
	get_tree().paused = true

func spawn_enemy():
	var enemy = enemy_scene.instantiate() as EnemyCactus
	enemy.speed = speed
	enemy.position = Vector2(0, 0)
	add_child(enemy)
	
func _on_timer_timeout():
	spawn_enemy()
