extends Sprite2D

var time = 0.0
var start_position = Vector2()

func _ready():
	start_position = position
	time = randf() * 10.0  # Random starting point so each star moves differently

func _process(delta):
	time += delta
	
	var shake_amount = 3.0  # pixels
	position.x = start_position.x + sin(time * 5.0) * shake_amount
	position.y = start_position.y + cos(time * 7.0) * shake_amount
