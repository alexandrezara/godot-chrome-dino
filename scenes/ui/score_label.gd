extends Label

var score = 0

func reset():
	score = 0
	$Timer.start()

func stop():
	$Timer.stop()

func _on_timer_timeout():
	score += 1
	text = ("%s" % score).pad_zeros(5)
