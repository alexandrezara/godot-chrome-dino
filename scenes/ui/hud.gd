extends CanvasLayer

func _ready():
	$GameOver.hide()
	$ScoreLabel.stop()

func show_game_over():
	$GameOver.show()
	$ScoreLabel.stop()

func restart_game():
	$GameOver.hide()
	$ScoreLabel.reset()
