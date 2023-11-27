extends ParallaxBackground

@export var speed: float

var running = false

func _process(delta):
	if running:
		self.scroll_offset.x -= speed * delta

func start():
	self.scroll_offset.x = 0
	running = true

func stop():
	running = false
