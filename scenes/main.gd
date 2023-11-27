extends Node

func _ready():
	new_game()

func new_game():
	$Background.start()
	$EnemySpawn.start()
	$Dino.start()
	$HUD.restart_game()

func game_over():
	$Background.stop()
	$EnemySpawn.stop()
	$Dino.stop()
	$HUD.show_game_over()

func _on_dino_dino_dead():
	game_over()

func _on_hud_hud_restart_game():
	print_debug("Pressed Main")
	new_game()
