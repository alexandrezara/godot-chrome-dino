extends CharacterBody2D

signal dino_dead

const JUMP_VELOCITY = 1100.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var dino_sprite = $DinoSprite

func start():
	dino_sprite.play("run")

func stop():
	dino_sprite.stop()

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("JUMP") and is_on_floor():
		velocity.y = -JUMP_VELOCITY

	move_and_slide()

func _on_area_2d_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	dino_dead.emit()
